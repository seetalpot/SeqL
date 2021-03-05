from __future__ import print_function

import ckt
import sys

def readBenchFile(filename):
    with open(filename, 'rt') as fobj:
        return readFileObject(fobj)

def readFileObject(fobj):
    fanins = {}
    node_map = {}
    output_names = []
    inputs = []
    for l in fobj.readlines():
        f = []
        l = l.strip()
        if len(l) == 0 or l.startswith('#'):
            continue
        if 'INPUT(' in l:
            name = l.replace("INPUT(", "").replace(")", "")
            node = ckt.InputNode(name)
            node_map[name] = node
            inputs.append(node)
        elif 'OUTPUT(' in l:
            name = l.replace("OUTPUT(", "").replace(")", "")
            output_names.append(name)
        elif '=' in l:
            parts = [p.strip() for p in l.split('=')]
            assert len(parts) == 2
            gate_name = parts[0]
            rhs = parts[1]
            if rhs == 'VDD':
                node_map[gate_name] = ckt.Const1Node()
            else:
                gate_type = rhs[:rhs.find('(')]
                within_bracket = rhs[rhs.find('(')+1:rhs.find(')')]
                fanin_names = [p.strip() for p in within_bracket.split(',')]
                fanins = [node_map[fn] for fn in fanin_names]
                if gate_type == 'AND':
                    g = ckt.AndGate(*fanins)
                elif gate_type == 'OR':
                    g = ckt.OrGate(*fanins)
                elif gate_type == 'NOT':
                    g = ckt.NotGate(*fanins)
                elif gate_type == 'XOR':
                    g = ckt.XorGate(*fanins)
                elif gate_type == 'XNOR':
                    g = ckt.XnorGate(*fanins)
                elif gate_type == 'NAND':
                    g = ckt.NandGate(*fanins)
                elif gate_type == 'NOR':
                    g = ckt.NorGate(*fanins)
                elif gate_type == 'BUF' or gate_type == 'BUFF':
                    g = ckt.BufGate(*fanins)
                else:
                    assert False, gate_type
                node_map[gate_name] = g
                g.name = gate_name
        else:
            assert False, l
    outputs = []
    for out_name in output_names:
        output = node_map[out_name]
        output.name = out_name
        outputs.append(output)

    return inputs, outputs, node_map

def main(argv):
    for arg in argv[1:]:
        inputs, outputs, node_map = readBenchFile(arg)
        max_fanins = max(len(node_map[n].fanins) for n in node_map)
        for n in node_map:
            node = node_map[n]
            if len(node.fanins) > 2:
                assert node.is_and_gate() or node.is_or_gate() or node.is_nand_gate() or node.is_nor_gate()

        print ('%-30s %5d' % (arg, max_fanins))

if __name__ == '__main__':
    main(sys.argv)
