-- ========================================
-- Quantum Computing Encyclopedia
-- File: quantum_definitions.sql
-- Author: Eya LAHIANI
-- License: MIT
-- ========================================

DROP TABLE IF EXISTS definitions;

CREATE TABLE definitions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    term TEXT NOT NULL,
    category TEXT,
    definition TEXT NOT NULL,
    source TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO definitions (term, category, definition, source) VALUES
('Qubit', 'Quantum Basics', 'A quantum bit is the basic unit of quantum information. Unlike a classical bit, it can be in a superposition of states.', 'https://www.ibm.com/think/topics/qubit'),

('Superposition', 'Quantum Basics', 'The ability of a quantum system to be in multiple states at once until measured.', 'https://en.wikipedia.org/wiki/Quantum_superposition'),

('Entanglement', 'Quantum Basics', 'A quantum phenomenon where two or more qubits become correlated so that the state of one instantly affects the other.', 'https://en.wikipedia.org/wiki/Quantum_entanglement'),

('Measurement', 'Quantum Basics', 'The act of observing a quantum state, which collapses it from superposition to a definite value.', 'https://en.wikipedia.org/wiki/Measurement_in_quantum_mechanics'),

('Hadamard Gate', 'Quantum Gates', 'A gate that puts a qubit into equal superposition: from |0⟩ to (|0⟩ + |1⟩)/√2.', 'https://www.quantum-inspire.com/kbase/hadamard/'),

('Pauli-X Gate', 'Quantum Gates', 'A quantum NOT gate that flips |0⟩ to |1⟩ and vice versa.', 'https://www.quera.com/glossary/pauli-x-gate'),

('Pauli-Y Gate', 'Quantum Gates', 'A rotation of a qubit around the Y axis of the Bloch sphere.', 'https://www.sharetechnote.com/html/QC/QuantumComputing_Gate_X.html#Gate_Y'),

('Pauli-Z Gate', 'Quantum Gates', 'A gate that flips the phase of the |1⟩ state.', 'https://www.sharetechnote.com/html/QC/QuantumComputing_Gate_X.html#Gate_Z'),

('CNOT Gate', 'Quantum Gates', 'A two-qubit gate that flips the second qubit (target) if the first qubit (control) is |1⟩.', 'https://quantum.cloud.ibm.com/docs/de/api/qiskit/qiskit.circuit.library.CXGate'),

('Quantum Circuit', 'Quantum Basics', 'A sequence of quantum gates applied to qubits to perform computation.', 'https://en.wikipedia.org/wiki/Quantum_circuit'),

('Tensor Product', 'Linear Algebra', 'An operation used to describe the joint state of multiple qubits by combining their individual states.', 'https://en.wikipedia.org/wiki/Tensor_product'),

('Bloch Sphere', 'Quantum Visualization', 'A geometric representation of the state space of a single qubit.', 'https://en.wikipedia.org/wiki/Bloch_sphere'),

('Quantum Fourier Transform', 'Algorithms', 'A quantum algorithm that transforms amplitudes into phases. Used in Shor’s Algorithm.', 'https://en.wikipedia.org/wiki/Quantum_Fourier_transform'),

('Grover’s Algorithm', 'Algorithms', 'A quantum algorithm that provides a quadratic speedup for unstructured search problems.', 'https://en.wikipedia.org/wiki/Grover%27s_algorithm'),

('Shor’s Algorithm', 'Algorithms', 'A quantum algorithm for factoring integers exponentially faster than the best-known classical algorithms.', 'https://en.wikipedia.org/wiki/Shor%27s_algorithm'),

('No-Cloning Theorem', 'Quantum Principles', 'A fundamental theorem stating that it is impossible to create an identical copy of an arbitrary unknown quantum state.', 'https://en.wikipedia.org/wiki/No-cloning_theorem'),

('Quantum Decoherence', 'Quantum Challenges', 'The loss of quantum coherence due to interaction with the environment, making quantum states behave classically.', 'https://en.wikipedia.org/wiki/Quantum_decoherence'),

('Quantum Speedup', 'Quantum Advantage', 'The increase in computational power a quantum algorithm has over its best-known classical counterpart.', 'https://en.wikipedia.org/wiki/Quantum_advantage'),

('Qiskit', 'Frameworks', 'An open-source SDK for working with quantum computers at the level of circuits, algorithms, and applications.', 'https://qiskit.org/'),

('Cirq', 'Frameworks', 'A Python library for designing, simulating, and running quantum circuits on Google’s quantum processors.', 'https://quantumai.google/cirq');
