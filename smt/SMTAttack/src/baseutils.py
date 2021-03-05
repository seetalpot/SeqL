#Import the MonoSAT library
from monosat import *
import logicwire
import converts
import copy
import baseutils
import time
import math
import copy
import operator
from random import randint
from collections import deque

LOGIC_VALUE_ZERO = "0"
LOGIC_VALUE_ONE = "1"

PRIMARY_INPUT = "pin"
PRIMARY_OUTPUT = "pout"
KEY_INPUT = "kin"
INTERMEDIATE_WIRE = "inwire"

ERR_PR = 3
WAR_PR = 2
INF_PR = 1
DBG_PR = 0

PRINT_MODE = WAR_PR


def h_print(f_arg, *argv):
    if f_arg >= PRINT_MODE:
        if argv:
            for arg in argv:
                print(arg, end="", sep='')
        print("")


def unique(a):
    """ return the list with duplicate elements removed """
    return list(set(a))


def finddip(pinwires, keywires, interwires, poutwires, list_dip, list_orgcirc, keyin1, keyin2, exe_time):

    discinp = [None] * len(pinwires)

    outxored_right = [None] * len(poutwires)

    if list_dip:
        iter = len(list_dip)
    else:
        iter = 0

    outxnored_left = []

    dip_list = []

    for i in range(0, len(pinwires)):
        discinp[i] = Var()
        discinp[i].symbol = pinwires[i].name + "_" + str(iter)

    output_list1 = converts.circuit2bool(interwires, poutwires, discinp, keyin1)
    output_list2 = converts.circuit2bool(interwires, poutwires, discinp, keyin2)

    if list_dip:
        baseutils.h_print(WAR_PR, "============================================= iteration: ", len(list_dip))

        # for i in range(0, len(list_dip)):

        for j in range(0, len(list_dip[len(list_dip) - 1])):
            baseutils.h_print(DBG_PR, list_dip[len(list_dip) - 1][j].symbol, " = ", str(list_dip[len(list_dip) - 1][j].value()))

        baseutils.h_print(DBG_PR, "")
        for j in range(0, len(list_orgcirc[len(list_dip) - 1])):
            baseutils.h_print(DBG_PR, list_orgcirc[len(list_dip) - 1][j].symbol, " = ", str(list_orgcirc[len(list_dip) - 1][j].value()))
        baseutils.h_print(DBG_PR, "")

        output_list_temp1 = converts.circuit2bool(interwires, poutwires, list_dip[len(list_dip) - 1], keyin1)
        output_list_temp2 = converts.circuit2bool(interwires, poutwires, list_dip[len(list_dip) - 1], keyin2)

        for j in range(0, len(output_list_temp1)):
            outxnored_left.append(Xnor(output_list_temp1[j], list_orgcirc[len(list_dip) - 1][j]))
            outxnored_left.append(Xnor(output_list_temp2[j], list_orgcirc[len(list_dip) - 1][j]))

        for i in range(0, len(list_dip)):
            for j in range(0, len(list_dip[i])):
                if str(list_dip[i][j].value()) == "True":
                    Assert(list_dip[i][j])
                elif str(list_dip[i][j].value()) == "False":
                    Assert(Not(list_dip[i][j]))

        # left_codition = And(outxnored_left)
        # dip_assert = And(dip_list)
        Assert(And(outxnored_left))
        # Assert(And(dip_list))

    else:
        baseutils.h_print(WAR_PR, "============================================= iteration: ", 0)
        left_codition = Var(true())
        dip_assert = Var(true())



    for i in range(0, len(poutwires)):
        outxored_right[i] = Xor(output_list1[i], output_list2[i]) #different outputs
        baseutils.h_print(DBG_PR, output_list1[i].getSymbol(), "A XOR ", output_list2[i].getSymbol(), "B!")

    # right_condition = Or(outxored_right)
    # Assert(Or(outxored_right))
    new_time = time.time()
    result = Solve(Or(outxored_right))  # Solve the instance in MonoSAT, return either True if the instance is SAT, and False if it is UNSAT
    new_time = time.time() - new_time
    # result = Solve()  # Solve the instance in MonoSAT, return either True if the instance is SAT, and False if it is UNSAT

    if result:
        baseutils.h_print(INF_PR, "SAT")
        for i in range(0, len(pinwires)):
            baseutils.h_print(INF_PR, discinp[i].getSymbol(), " = ", str(discinp[i].value()))

        for i in range(0, len(keywires)):
            baseutils.h_print(INF_PR, keyin1[i].getSymbol(), " = ", str(keyin1[i].value()))

        for i in range(0, len(keywires)):
            baseutils.h_print(INF_PR, keyin2[i].getSymbol(), " = ", str(keyin2[i].value()))
        return 1, discinp, new_time+exe_time
    else:
        baseutils.h_print(WAR_PR, "UNSAT")
        return -1, discinp, new_time+exe_time


def double_dip(pinwires, keywires, interwires, poutwires, list_dip, list_orgcirc, keyin1, keyin2, keyin3, keyin4, exe_time):

    discinp = [None] * len(pinwires)

    outxored_right1 = [None] * len(poutwires)
    outxored_right2 = [None] * len(poutwires)
    outxored_right3 = [None] * len(poutwires)
    outxored_right4 = [None] * len(poutwires)

    outxnored_right1 = [None] * len(poutwires)
    outxnored_right2 = [None] * len(poutwires)

    key_xored = [None] * len(keywires)

    if list_dip:
        iter = len(list_dip)
    else:
        iter = 0

    outxnored_left = []

    dip_list = []

    for i in range(0, len(pinwires)):
        discinp[i] = Var()
        discinp[i].symbol = pinwires[i].name + "_" + str(iter)

    output_list1 = converts.circuit2bool(interwires, poutwires, discinp, keyin1)
    output_list2 = converts.circuit2bool(interwires, poutwires, discinp, keyin2)
    output_list3 = converts.circuit2bool(interwires, poutwires, discinp, keyin3)
    output_list4 = converts.circuit2bool(interwires, poutwires, discinp, keyin4)

    if list_dip:
        baseutils.h_print(WAR_PR, "============================================= iteration: ", len(list_dip))

        # for i in range(0, len(list_dip)):

        for j in range(0, len(list_dip[len(list_dip) - 1])):
            baseutils.h_print(DBG_PR, list_dip[len(list_dip) - 1][j].symbol, " = ", str(list_dip[len(list_dip) - 1][j].value()))

        baseutils.h_print(DBG_PR, "")
        for j in range(0, len(list_orgcirc[len(list_dip) - 1])):
            baseutils.h_print(DBG_PR, list_orgcirc[len(list_dip) - 1][j].symbol, " = ", str(list_orgcirc[len(list_dip) - 1][j].value()))
        baseutils.h_print(DBG_PR, "")

        output_list_temp1 = converts.circuit2bool(interwires, poutwires, list_dip[len(list_dip) - 1], keyin1)
        output_list_temp2 = converts.circuit2bool(interwires, poutwires, list_dip[len(list_dip) - 1], keyin2)
        output_list_temp3 = converts.circuit2bool(interwires, poutwires, list_dip[len(list_dip) - 1], keyin3)
        output_list_temp4 = converts.circuit2bool(interwires, poutwires, list_dip[len(list_dip) - 1], keyin4)

        for j in range(0, len(output_list_temp1)):
            outxnored_left.append(Xnor(output_list_temp1[j], list_orgcirc[len(list_dip) - 1][j]))
            outxnored_left.append(Xnor(output_list_temp2[j], list_orgcirc[len(list_dip) - 1][j]))
            outxnored_left.append(Xnor(output_list_temp3[j], list_orgcirc[len(list_dip) - 1][j]))
            outxnored_left.append(Xnor(output_list_temp4[j], list_orgcirc[len(list_dip) - 1][j]))

        for i in range(0, len(list_dip)):
            for j in range(0, len(list_dip[i])):
                if str(list_dip[i][j].value()) == "True":
                    Assert(list_dip[i][j])
                elif str(list_dip[i][j].value()) == "False":
                    Assert(Not(list_dip[i][j]))

        # left_codition = And(outxnored_left)
        # dip_assert = And(dip_list)
        Assert(And(outxnored_left))
        # Assert(And(dip_list))

    else:
        baseutils.h_print(WAR_PR, "============================================= iteration: ", 0)
        left_codition = Var(true())
        dip_assert = Var(true())

    for i in range(0, len(poutwires)):
        outxnored_right1[i] = Xnor(output_list1[i], output_list3[i]) #different outputs
        baseutils.h_print(DBG_PR, output_list1[i].getSymbol(), "A1 XNOR ", output_list3[i].getSymbol(), "B1!")
        outxnored_right2[i] = Xnor(output_list2[i], output_list4[i]) #different outputs
        baseutils.h_print(DBG_PR, output_list2[i].getSymbol(), "A2 XNOR ", output_list4[i].getSymbol(), "B2!")

        outxored_right1[i] = Xor(output_list1[i], output_list2[i]) #different outputs
        baseutils.h_print(DBG_PR, output_list1[i].getSymbol(), "A XOR ", output_list2[i].getSymbol(), "B!")

        outxored_right2[i] = Xor(output_list1[i], output_list4[i])  # different outputs
        baseutils.h_print(DBG_PR, output_list1[i].getSymbol(), "A XOR ", output_list2[i].getSymbol(), "B!")

        outxored_right3[i] = Xor(output_list2[i], output_list3[i])  # different outputs
        baseutils.h_print(DBG_PR, output_list1[i].getSymbol(), "A XOR ", output_list2[i].getSymbol(), "B!")

        outxored_right4[i] = Xor(output_list3[i], output_list4[i])  # different outputs
        baseutils.h_print(DBG_PR, output_list1[i].getSymbol(), "A XOR ", output_list2[i].getSymbol(), "B!")

    for i in range(0, len(keywires)):
        key_xored[i] = Xor(keyin1[i], keyin2[i], keyin3[i], keyin4[i])


    # right_condition = Or(outxored_right)
    new_time = time.time()
    result = Solve(And(And(outxnored_right1), And(outxnored_right2), Or(outxored_right1), Or(outxored_right2), Or(outxored_right3), Or(outxored_right4), Or(key_xored)))  # Solve the instance in MonoSAT, return either True if the instance is SAT, and False if it is UNSAT
    new_time = time.time() - new_time
    # result = Solve()  # Solve the instance in MonoSAT, return either True if the instance is SAT, and False if it is UNSAT

    if result:
        baseutils.h_print(INF_PR, "SAT")
        for i in range(0, len(pinwires)):
            baseutils.h_print(INF_PR, discinp[i].getSymbol(), " = ", str(discinp[i].value()))

        for i in range(0, len(keywires)):
            baseutils.h_print(INF_PR, keyin1[i].getSymbol(), " = ", str(keyin1[i].value()))

        for i in range(0, len(keywires)):
            baseutils.h_print(INF_PR, keyin2[i].getSymbol(), " = ", str(keyin2[i].value()))

        for i in range(0, len(keywires)):
            baseutils.h_print(INF_PR, keyin3[i].getSymbol(), " = ", str(keyin3[i].value()))

        for i in range(0, len(keywires)):
            baseutils.h_print(INF_PR, keyin4[i].getSymbol(), " = ", str(keyin4[i].value()))
        return 1, discinp, new_time+exe_time
    else:
        baseutils.h_print(WAR_PR, "UNSAT")
        return -1, discinp, new_time+exe_time


def findkey(keyin_wires, interwires, poutwires, list_dip, list_orgcirc, keyinc):

    keyin = [None] * len(keyin_wires)

    outxnored = []

    for i in range(0, len(keyin_wires)):
        keyin[i] = Var()
        keyin[i].symbol = keyinc[i].symbol
        baseutils.h_print(DBG_PR, "lastkey", i, " = ", keyin[i].getSymbol())  # getSymbol doesn't work!

    for i in range(0, len(list_dip)):

        output_list_temp = converts.circuit2bool(interwires, poutwires, list_dip[i], keyin)

        for j in range(0, len(poutwires)):
            outxnored.append(Xnor(output_list_temp[j], list_orgcirc[i][j]))

    keyfinding = And(outxnored)

    result = Solve(keyfinding)  # Solve the instance in MonoSAT, return either True if the instance is SAT, and False if it is UNSAT

    for i in range(0, len(keyin_wires)):
        keyin[i].symbol = keyinc[i].symbol

    if result:
        baseutils.h_print(INF_PR, "SAT")
        return keyin
    else:
        baseutils.h_print(WAR_PR, "UNSAT")
        return keyin


def findkey_list(keyin_wires, interwires, poutwires, list_dip, list_orgcirc, keyinc, list_keys):

    keyin = [None] * len(keyin_wires)

    outxnored = []

    for i in range(0, len(keyin_wires)):
        keyin[i] = Var()
        keyin[i].symbol = keyinc[i].symbol
        baseutils.h_print(DBG_PR, "lastkey", i, " = ", keyin[i].getSymbol())  # getSymbol doesn't work!

    for i in range(0, len(list_dip)):

        output_list_temp = converts.circuit2bool(interwires, poutwires, list_dip[i], keyin)

        for j in range(0, len(poutwires)):
            outxnored.append(Xnor(output_list_temp[j], list_orgcirc[i][j]))

    if list_keys:
        for j in range(0, len(list_keys)):
            current_key = []
            for i in range(0, len(keyinc)):
                if str(list_keys[j][i].value()) == "True":
                    Assert(list_keys[j][i])
                elif str(list_keys[j][i].value()) == "False":
                    Assert(Not(list_keys[j][i]))
                current_key.append(Xnor(list_keys[j][i], keyin[i]))
            Assert(Nand(current_key))

    keyfind = And(outxnored)

    result, intr = Solve(keyfind)  # Solve the instance in MonoSAT, return either True if the instance is SAT, and False if it is UNSAT

    for i in range(0, len(keyin_wires)):
        keyin[i].symbol = keyinc[i].symbol

    if result:
        baseutils.h_print(INF_PR, "SAT")
        return keyin
    else:
        baseutils.h_print(WAR_PR, "UNSAT")



def finddipham(pinwires, keywires, interwires, poutwires, list_dip, list_orgcirc, keyin1, keyin2, exe_time, interval, timeout_array, const_solve):

    discinp = [None] * len(pinwires)

    outxored_right = [None] * len(poutwires)

    bit_intval = [None] * len(poutwires)
    minham_conditions = [None] * 2 * len(poutwires)

    hamming_threshold_low = BitVector(len(poutwires))
    hamming_threshold_up = BitVector(len(poutwires))
    hammming_val = BitVector(len(poutwires))

    for i in range(0, len(poutwires)):
        bit_intval[i] = BitVector(len(poutwires))

    Assert(hamming_threshold_low < interval + 1)
    Assert(hamming_threshold_low > interval - 1)

    Assert(hamming_threshold_up < len(poutwires) + 1)
    Assert(hamming_threshold_up > len(poutwires) - 1)

    if list_dip:
        iter = len(list_dip)
    else:
        iter = 0

    outxnored_left = []

    dip_list = []

    for i in range(0, len(pinwires)):
        discinp[i] = Var()
        discinp[i].symbol = pinwires[i].name + "_" + str(iter)

    output_list1 = converts.circuit2bool(interwires, poutwires, discinp, keyin1)
    output_list2 = converts.circuit2bool(interwires, poutwires, discinp, keyin2)

    if list_dip:
        baseutils.h_print(WAR_PR, "============================================= iteration: ", len(list_dip))

        # for i in range(0, len(list_dip)):

        for j in range(0, len(list_dip[len(list_dip) - 1])):
            baseutils.h_print(DBG_PR, list_dip[len(list_dip) - 1][j].symbol, " = ", str(list_dip[len(list_dip) - 1][j].value()))

        baseutils.h_print(DBG_PR, "")
        for j in range(0, len(list_orgcirc[len(list_dip) - 1])):
            baseutils.h_print(DBG_PR, list_orgcirc[len(list_dip) - 1][j].symbol, " = ", str(list_orgcirc[len(list_dip) - 1][j].value()))
        baseutils.h_print(DBG_PR, "")

        output_list_temp1 = converts.circuit2bool(interwires, poutwires, list_dip[len(list_dip) - 1], keyin1)
        output_list_temp2 = converts.circuit2bool(interwires, poutwires, list_dip[len(list_dip) - 1], keyin2)

        for j in range(0, len(output_list_temp1)):
            outxnored_left.append(Xnor(output_list_temp1[j], list_orgcirc[len(list_dip) - 1][j]))
            outxnored_left.append(Xnor(output_list_temp2[j], list_orgcirc[len(list_dip) - 1][j]))

        for i in range(0, len(list_dip)):
            for j in range(0, len(list_dip[i])):
                if str(list_dip[i][j].value()) == "True":
                    Assert(list_dip[i][j])
                elif str(list_dip[i][j].value()) == "False":
                    Assert(Not(list_dip[i][j]))

        # left_codition = And(outxnored_left)
        # dip_assert = And(dip_list)
        Assert(And(outxnored_left))
        # Assert(And(dip_list))

    else:
        baseutils.h_print(WAR_PR, "============================================= iteration: ", 0)
        left_codition = Var(true())
        dip_assert = Var(true())



    for i in range(0, len(poutwires)):
        outxored_right[i] = Xor(output_list1[i], output_list2[i]) #different outputs
        minham_conditions[2*i] = Implies(outxored_right[i], bit_intval[i] == 1)
        minham_conditions[2*i+1] = Implies(Not(outxored_right[i]), bit_intval[i] == 0)
        baseutils.h_print(DBG_PR, output_list1[i].getSymbol(), "A XOR ", output_list2[i].getSymbol(), "B!")
    for i in range(0, len(poutwires)):
        if i == 0:
            hammming_val = bit_intval[i]
        else:
            hammming_val += bit_intval[i]

    upper_condition = (hammming_val >= hamming_threshold_low)
    lower_condition = (hammming_val <= hamming_threshold_up)


    # right_condition = Or(outxored_right)
    # Assert(Or(outxored_right))
    current_timeout = int(math.ceil(sum(list(timeout_array)) / len(list(timeout_array))))
    print("ct", current_timeout)
    new_time = time.time()
    result, intr = Solve(And(Or(outxored_right), upper_condition, lower_condition, And(minham_conditions)),
                         time_limit_seconds=20,
                         conflict_limit=50000)  # Solve the instance in MonoSAT, return either True if the instance is SAT, and False if it is UNSAT
    new_time = time.time() - new_time

    # result = Solve( )  # Solve the instance in MonoSAT, return either True if the instance is SAT, and False if it is UNSAT
    print("hamming_threshold: ", hamming_threshold_low.value(), hamming_threshold_up.value())
    print("hammming_val: ", hammming_val.value())

    print("inres > ", result)
    print("intr > ", intr)

    if intr == 1:
        timeout_array.append(20)
        timeout_array.popleft()
    else:
        timeout_array.append(new_time)
        timeout_array.popleft()

    if result:

        if const_solve:
            if int(hammming_val.value()) == const_solve[0]:
                const_solve.append(int(hammming_val.value()))
            else:
                const_solve = []
        else:
            const_solve.append(int(hammming_val.value()))

        baseutils.h_print(INF_PR, "SAT")
        baseutils.h_print(INF_PR, "DIP >> =====================================")
        for i in range(0, len(pinwires)):
            baseutils.h_print(INF_PR, discinp[i].getSymbol(), " = ", str(discinp[i].value()))

        baseutils.h_print(INF_PR, "Key1 >> ====================================")
        for i in range(0, len(keywires)):
            baseutils.h_print(INF_PR, keyin1[i].getSymbol(), " = ", str(keyin1[i].value()))

        baseutils.h_print(INF_PR, "Out1 >> ====================================")
        for i in range(0, len(poutwires)):
            baseutils.h_print(INF_PR, output_list1[i].getSymbol(), " = ", str(output_list1[i].value()))

        baseutils.h_print(INF_PR, "Key2 >> ====================================")
        for i in range(0, len(keywires)):
            baseutils.h_print(INF_PR, keyin2[i].getSymbol(), " = ", str(keyin2[i].value()))

        baseutils.h_print(INF_PR, "Out2 >> ====================================")
        for i in range(0, len(poutwires)):
            baseutils.h_print(INF_PR, output_list2[i].getSymbol(), " = ", str(output_list2[i].value()))


        print("DIP > ", end='')
        for i in range(0, len(pinwires)):
            if str(discinp[i].value()) == "True":
                print("1", end= '')
            elif str(discinp[i].value()) == "False":
                print("0", end='')
        print("")

        print("====================================")

        print("Key1 > ", end='')
        for i in range(0, len(keywires)):
            if str(keyin1[i].value()) == "True":
                print("1", end='')
            elif str(keyin1[i].value()) == "False":
                print("0", end='')
        print("")

        print("Key2 > ", end='')
        for i in range(0, len(keywires)):
            if str(keyin2[i].value()) == "True":
                print("1", end='')
            elif str(keyin2[i].value()) == "False":
                print("0", end='')
        print("")

        print("====================================")

        print("Out1 > ", end='')
        for i in range(0, len(poutwires)):
            if str(output_list1[i].value()) == "True":
                print("1", end='')
            elif str(output_list1[i].value()) == "False":
                print("0", end='')
        print("")

        print("Out2 > ", end='')
        for i in range(0, len(poutwires)):
            if str(output_list2[i].value()) == "True":
                print("1", end='')
            elif str(output_list2[i].value()) == "False":
                print("0", end='')
        print("")

        print("xored > ", end='')
        for i in range(0, len(poutwires)):
            print(bit_intval[i].value(), end='')
        print("")


        return 1, discinp, new_time+exe_time, interval, timeout_array, const_solve
    elif intr == 0:
        baseutils.h_print(WAR_PR, "UNSAT")
        return -1, discinp, new_time+exe_time, interval, timeout_array, const_solve
    elif intr == 1:
        return -2, discinp, new_time+exe_time, interval, timeout_array, const_solve



def finddiplazy(obf_bench_address, pinwires, keywires, interwires, poutwires, list_dip, list_orgcirc, keyin1, keyin2, exe_time, gc_list1, gc_list2):

    discinp = [None] * len(pinwires)

    outxored_right = [None] * len(poutwires)

    if list_dip:
        iter = len(list_dip)
    else:
        iter = 0

    outxnored_left = []

    dip_list = []

    for i in range(0, len(pinwires)):
        discinp[i] = Var()
        discinp[i].symbol = pinwires[i].name + "_" + str(iter)

    output_list1 = converts.circuit2bool(interwires, poutwires, discinp, keyin1)
    output_list2 = converts.circuit2bool(interwires, poutwires, discinp, keyin2)

    if list_dip:
        baseutils.h_print(WAR_PR, "============================================= iteration: ", len(list_dip))

        # for i in range(0, len(list_dip)):

        for j in range(0, len(list_dip[len(list_dip) - 1])):
            baseutils.h_print(DBG_PR, list_dip[len(list_dip) - 1][j].symbol, " = ", str(list_dip[len(list_dip) - 1][j].value()))

        baseutils.h_print(DBG_PR, "")
        for j in range(0, len(list_orgcirc[len(list_dip) - 1])):
            baseutils.h_print(DBG_PR, list_orgcirc[len(list_dip) - 1][j].symbol, " = ", str(list_orgcirc[len(list_dip) - 1][j].value()))
        baseutils.h_print(DBG_PR, "")

        output_list_temp1 = converts.circuit2bool(interwires, poutwires, list_dip[len(list_dip) - 1], keyin1)
        output_list_temp2 = converts.circuit2bool(interwires, poutwires, list_dip[len(list_dip) - 1], keyin2)

        for j in range(0, len(output_list_temp1)):
            outxnored_left.append(Xnor(output_list_temp1[j], list_orgcirc[len(list_dip) - 1][j]))
            outxnored_left.append(Xnor(output_list_temp2[j], list_orgcirc[len(list_dip) - 1][j]))

        for i in range(0, len(list_dip)):
            for j in range(0, len(list_dip[i])):
                if str(list_dip[i][j].value()) == "True":
                    Assert(list_dip[i][j])
                elif str(list_dip[i][j].value()) == "False":
                    Assert(Not(list_dip[i][j]))

        # left_codition = And(outxnored_left)
        # dip_assert = And(dip_list)
        Assert(And(outxnored_left))
        # Assert(And(dip_list))

    else:
        baseutils.h_print(WAR_PR, "============================================= iteration: ", 0)
        left_codition = Var(true())
        dip_assert = Var(true())

    for i in range(0, len(poutwires)):
        outxored_right[i] = Xor(output_list1[i], output_list2[i]) #different outputs
        baseutils.h_print(DBG_PR, output_list1[i].getSymbol(), "A XOR ", output_list2[i].getSymbol(), "B!")

    graph_pre_time = 0
    if list_dip:
        path_conditions1 = gc_list1
        path_conditions2 = gc_list2
        graph_pre_time = 0
    else:
        graph_pre_time = time.time()
        path_conditions1 = graph_dep_lazy(obf_bench_address, poutwires, keyin1)
        graph_pre_time = time.time() - graph_pre_time
        path_conditions2 = graph_dep_lazy(obf_bench_address, poutwires, keyin2)


    new_time = time.time()
    result = Solve(And(Or(outxored_right), Or(path_conditions1), Or(path_conditions2)))  # Solve the instance in MonoSAT, return either True if the instance is SAT, and False if it is UNSAT
    new_time = time.time() - new_time
    # result = Solve()  # Solve the instance in MonoSAT, return either True if the instance is SAT, and False if it is UNSAT

    if result:
        baseutils.h_print(INF_PR, "SAT")
        for i in range(0, len(pinwires)):
            baseutils.h_print(INF_PR, discinp[i].getSymbol(), " = ", str(discinp[i].value()))

        for i in range(0, len(keywires)):
            baseutils.h_print(INF_PR, keyin1[i].getSymbol(), " = ", str(keyin1[i].value()))

        for i in range(0, len(keywires)):
            baseutils.h_print(INF_PR, keyin2[i].getSymbol(), " = ", str(keyin2[i].value()))
        return 1, discinp, new_time + exe_time + graph_pre_time/10, path_conditions1, path_conditions2
    else:
        baseutils.h_print(WAR_PR, "UNSAT")
        return -1, discinp, new_time + exe_time + graph_pre_time/10, path_conditions1, path_conditions2


def graph_dep_lazy(benchmark_address, orgpoutwires, keyin):

    g = Graph()
    node_array = []
    input_list = []
    output_list = []
    key_gate = []
    key_list = []
    key_value = []

    n = [None] * 10000
    i = 0
    l = 0
    u = 0
    keyin_vars = [None] * len(keyin)
    not_keyin_vars = [None] * len(keyin)
    key_valid = [0] * len(keyin)

    # for i in range(0, len(keyin)):
    #     # keyin_vars[i] = Var()
    #     # not_keyin_vars[i] = Var()
    #     key_valid[i] = 0

    bench_file = open(benchmark_address)

    list_delay_keys = []

    for line in bench_file:
        if "INPUT" in line:
            if line[line.find("(") + 1:line.find("(") + 4] != "key":
                input_list.append(line[line.find("(") + 1:line.find(")")])
                node_array.append(line[line.find("(") + 1:line.find(")")])
                n[i] = g.addNode(line[line.find("(") + 1:line.find(")")])
                i += 1
        elif "OUTPUT" in line:
            output_list.append(line[line.find("(") + 1:line.find(")")])
        elif " = " in line:
            gate_type = line[line.find("= ") + 2: line.find("(")]
            if gate_type != "DELAY":
                node_array.append(line[0: line.find(" =")])
                n[i] = g.addNode(line[0: line.find(" =")])
                i += 1
                gate_list_inputs = line[line.find("(") + 1:line.find(")")]
                gate_oprs = gate_list_inputs.split(", ")

                for k in range(0, len(node_array)):
                    for h in range(0, len(gate_oprs)):
                        if node_array[k] == gate_oprs[h]:
                            g.addEdge(n[k], n[i - 1], 1)

            else:
                node_array.append(line[0: line.find(" =")])
                n[i] = g.addNode(line[0: line.find(" =")])
                i += 1
                gate_list_inputs = line[line.find("(") + 1:line.find(")")]
                first_op = line[line.find("(") + 1:line.find(",")]
                gate_oprs1 = gate_list_inputs.split(", ")

                key_gate.append(gate_oprs1[1])
                key_gate.append(gate_oprs1[2])

                key_list.append(gate_oprs1[3])
                key_list.append(gate_oprs1[3])

                list_delay_keys.append(gate_oprs1[3])

                key_value.append(0)
                key_value.append(1)
                l += 2

                for k in range(0, len(node_array)):
                    if node_array[k] == first_op:
                        node_array.append(gate_oprs1[1])
                        n[i] = g.addNode(gate_oprs1[1])
                        i += 1
                        key_number = int(gate_oprs1[3].replace("keyinput", ""))
                        not_keyin_vars[key_number] = g.addEdge(n[k], n[i - 1], int(gate_oprs1[4]))
                        g.addEdge(n[i - 1], n[i - 2], 1)
                        node_array.append(gate_oprs1[2])
                        n[i] = g.addNode(gate_oprs1[2])
                        i += 1
                        keyin_vars[key_number] = g.addEdge(n[k], n[i - 1], int(gate_oprs1[5]))
                        g.addEdge(n[i - 1], n[i - 3], 1)

                        key_valid[key_number] = 1

    # --------------------------------------------------------------------------------------
    u = len(node_array)

    solved_keys = []
    solved_keys_value = []

    source = g.addNode("source")
    dest = g.addNode("destination")
    source_edges = []
    dest_edges = []
    bv1 = BitVector(6)
    bv2 = BitVector(6)

    for k in range(0, len(input_list)):
        source_edges.append(g.addEdge(source, n[k]))
    for i in range(0, len(output_list)):
        dest_edges.append(g.addEdge(n[u - i - 1], dest))

    AssertAtMostOne(source_edges)
    AssertAtMostOne(dest_edges)

    Assert(g.distance_leq(source, dest, bv1 + 5 + 2))
    upperbound = ~g.distance_leq(source, dest, bv2 - 5 + 2)
    Assert(upperbound)

    list_conditions = []

    for i in range(0, len(keyin)):
        if key_valid[i] == 1:
            Assert(Implies(keyin_vars[i], keyin[i]))
            Assert(Implies(not_keyin_vars[i], Not(keyin[i])))

    if len(list_delay_keys) > 0:
        for k in range(0, len(input_list)):
            for i in range(0, len(output_list)):
                for j in range(0, len(orgpoutwires)):
                    if output_list[i] == orgpoutwires[j].name:
                        bv2 = orgpoutwires[j].logic_level_min
                        bv1 = orgpoutwires[j].logic_level

                baseutils.h_print(DBG_PR, n[k], '->', n[u - i - 1])

                result = Solve(And(source_edges[k], dest_edges[i]))
                baseutils.h_print(DBG_PR, result)

                if result:
                    # list_conditions.append(And(source_edges[k], dest_edges[i]))
                    path_by_nodes = g.getPath(upperbound)
                    list_conditions.append(And(source_edges[k], dest_edges[i]))
                    if path_by_nodes is not None:
                        baseutils.h_print(DBG_PR, "Satisfying path (as a list of nodes): " + str(path_by_nodes))
                        for i in path_by_nodes:
                            if i != source and i != dest:
                                for j in range(0, len(key_gate)):
                                    if node_array[i] == key_gate[j]:
                                        if key_list[j] not in solved_keys:
                                            solved_keys.append(key_list[j])
                                            solved_keys_value.append(key_value[j])
                                        else:
                                            for m in range(0, len(solved_keys)):
                                                if solved_keys[m] == key_list[j]:
                                                    if solved_keys_value[m] != key_value[j]:
                                                        baseutils.h_print(WAR_PR, "----------------", solved_keys[m])
                                                        baseutils.h_print(WAR_PR, "---solved:", solved_keys_value[m])
                                                        baseutils.h_print(WAR_PR, "---current:", key_value[j])
                                        baseutils.h_print(DBG_PR, key_list[j], '=', key_value[j])

                baseutils.h_print(DBG_PR, '--------------------')
    else:
        baseutils.h_print(WAR_PR, "No delay keys ..........")

    return list_conditions


def graph_dep(benchmark_address, orgpoutwires):
    baseutils.h_print(WAR_PR, "************* Starting graph_(Non-Boolean) Solving **********")
    baseutils.h_print(WAR_PR, "------------ looking for time-constrained Paths  ------------")

    g = Graph()
    node_array = []
    input_list = []
    output_list = []
    key_gate = []
    key_list = []
    key_value = []

    n = [None] * 10000
    i = 0
    l = 0
    u = 0
    bench_file = open(benchmark_address)

    list_delay_keys = []

    for line in bench_file:
        if "INPUT" in line:
            input_list.append(line[line.find("(") + 1:line.find(")")])
            node_array.append(line[line.find("(") + 1:line.find(")")])
            n[i] = g.addNode(line[line.find("(") + 1:line.find(")")])
            i += 1
        elif "OUTPUT" in line:
            output_list.append(line[line.find("(") + 1:line.find(")")])
        elif " = " in line:
            gate_type = line[line.find("= ") + 2: line.find("(")]
            if gate_type != "DELAY":
                node_array.append(line[0: line.find(" =")])
                n[i] = g.addNode(line[0: line.find(" =")])
                i += 1
                gate_list_inputs = line[line.find("(") + 1:line.find(")")]
                gate_oprs = gate_list_inputs.split(", ")

                for k in range(0, len(node_array)):
                    for h in range(0, len(gate_oprs)):
                        if node_array[k] == gate_oprs[h]:
                            g.addEdge(n[k], n[i - 1], 1)

            else:
                node_array.append(line[0: line.find(" =")])
                n[i] = g.addNode(line[0: line.find(" =")])
                i += 1
                gate_list_inputs = line[line.find("(") + 1:line.find(")")]
                first_op = line[line.find("(") + 1:line.find(",")]
                gate_oprs1 = gate_list_inputs.split(", ")

                key_gate.append(gate_oprs1[1])
                key_gate.append(gate_oprs1[2])

                key_list.append(gate_oprs1[3])
                key_list.append(gate_oprs1[3])

                list_delay_keys.append(gate_oprs1[3])

                key_value.append(0)
                key_value.append(1)
                l += 2

                for k in range(0, len(node_array)):
                    if node_array[k] == first_op:
                        node_array.append(gate_oprs1[1])
                        n[i] = g.addNode(gate_oprs1[1])
                        i += 1
                        g.addEdge(n[k], n[i - 1], int(gate_oprs1[4]))
                        g.addEdge(n[i - 1], n[i - 2], 1)
                        node_array.append(gate_oprs1[2])
                        n[i] = g.addNode(gate_oprs1[2])
                        i += 1
                        g.addEdge(n[k], n[i - 1], int(gate_oprs1[5]))
                        g.addEdge(n[i - 1], n[i - 3], 1)

    # --------------------------------------------------------------------------------------
    u = len(node_array)

    solved_keys = []
    solved_keys_value = []

    baseutils.h_print(WAR_PR, "=========== Starting graph_(Non-Boolean) Solving ============")
    baseutils.h_print(WAR_PR, "----------------- Iterative distance_lt call ----------------")

    source = g.addNode("source")
    dest = g.addNode("destination")
    source_edges = []
    dest_edges = []
    bv1 = BitVector(6)
    bv2 = BitVector(6)

    for k in range(0, len(input_list)):
        source_edges.append(g.addEdge(source, n[k]))
    for i in range(0, len(output_list)):
        dest_edges.append(g.addEdge(n[u - i - 1], dest))

    AssertAtMostOne(source_edges)
    AssertAtMostOne(dest_edges)

    Assert(g.distance_leq(source, dest, bv1 + 5 + 2))
    upperbound = ~g.distance_leq(source, dest, bv2 - 5 + 2)
    Assert(upperbound)

    if len(list_delay_keys) > 0:
        for k in range(0, len(input_list)):
            for i in range(0, len(output_list)):
                for j in range(0, len(orgpoutwires)):
                    if output_list[i] == orgpoutwires[j].name:
                        bv2 = orgpoutwires[j].logic_level_min
                        bv1 = orgpoutwires[j].logic_level

                baseutils.h_print(DBG_PR, n[k], '->', n[u - i - 1])

                result = Solve(And(source_edges[k], dest_edges[i]))
                baseutils.h_print(DBG_PR, result)

                if result:
                    path_by_nodes = g.getPath(upperbound)
                    if path_by_nodes is not None:
                        baseutils.h_print(DBG_PR, "Satisfying path (as a list of nodes): " + str(path_by_nodes))
                        for i in path_by_nodes:
                            if i != source and i != dest:
                                for j in range(0, len(key_gate)):
                                    if node_array[i] == key_gate[j]:
                                        if key_list[j] not in solved_keys:
                                            solved_keys.append(key_list[j])
                                            solved_keys_value.append(key_value[j])
                                        else:
                                            for m in range(0, len(solved_keys)):
                                                if solved_keys[m] == key_list[j]:
                                                    if solved_keys_value[m] != key_value[j]:
                                                        baseutils.h_print(WAR_PR, "----------------slv_key", m, " = ",
                                                                          solved_keys[m])
                                                        baseutils.h_print(WAR_PR, "----------------slv_key_value", m,
                                                                          " = ", solved_keys_value[m])
                                                        baseutils.h_print(WAR_PR, "----------------key_list", j, " = ",
                                                                          key_list[j])
                                                        baseutils.h_print(WAR_PR, "----------------key_list_value", j,
                                                                          " = ", key_value[j])
                                        baseutils.h_print(DBG_PR, key_list[j], '=', key_value[j])

                baseutils.h_print(DBG_PR, '--------------------')
    else:
        baseutils.h_print(WAR_PR, "No delay keys ..........")

    baseutils.h_print(WAR_PR, "============ Ending graph_(Non-Boolean) Solving =============")

    key_vars = [None] * len(solved_keys)

    if len(list_delay_keys) != len(solved_keys):
        baseutils.h_print(ERR_PR, "----------------- all keys are not solved! required = ", len(list_delay_keys),
                          ",   solved = ", len(solved_keys))

    terms = []
    for i in range(0, len(solved_keys)):
        if solved_keys_value[i] == 0:
            key_vars[i] = Var(false())
            key_vars[i].symbol = solved_keys[i] + "c"
            terms.append(Not(key_vars[i]))
        else:
            key_vars[i] = Var(true())
            key_vars[i].symbol = solved_keys[i] + "c"
            terms.append(key_vars[i])
    result = Solve(And(terms))
    key_vars.sort(key=operator.attrgetter('symbol'))
    for i in range(0, len(key_vars)):
        baseutils.h_print(DBG_PR, key_vars[i].getSymbol(), " = ", str(key_vars[i].value()))

    return key_vars











