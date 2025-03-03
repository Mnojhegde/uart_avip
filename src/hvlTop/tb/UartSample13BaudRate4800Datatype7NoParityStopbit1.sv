`ifndef UARTSAMPLE13BAUDRATE4800DATATYPE7NOPARITYSTOPBIT1_INCLUDED_
`define UARTSAMPLE13BAUDRATE4800DATATYPE7NOPARITYSTOPBIT1_INCLUDED_
//--------------------------------------------------------------------------------------------
// Class:UartSample13BaudRate4800Datatype7NoParityStopbit1
// A test for 13 sampling condition
//--------------------------------------------------------------------------------------------
class UartSample13BaudRate4800Datatype7NoParityStopbit1 extends UartBaseTest;
 `uvm_component_utils( UartSample13BaudRate4800Datatype7NoParityStopbit1)
    UartVirtualBaseSequence uartVirtualBaseSequence;
//-------------------------------------------------------
// Externally defined Tasks and Functions
//-------------------------------------------------------
    extern function new(string name = "UartSample13BaudRate4800Datatype7NoParityStopbit1" , uvm_component parent = null);
    extern virtual function void  build_phase(uvm_phase phase);
    extern virtual task run_phase(uvm_phase phase);

endclass :UartSample13BaudRate4800Datatype7NoParityStopbit1
//--------------------------------------------------------------------------------------------
// Constructor:new
//
// Paramters:
//
// parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
     function UartSample13BaudRate4800Datatype7NoParityStopbit1:: new(string name ="UartSample13BaudRate4800Datatype7NoParityStopbit1" , uvm_component parent = null);
  super.new(name,parent);
endfunction  : new
//--------------------------------------------------------------------------------------------
// Function: build_phase
//  Create required ports
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void UartSample13BaudRate4800Datatype7NoParityStopbit1 :: build_phase(uvm_phase phase);
  super.build_phase(phase);
  uartEnvConfig.uartTxAgentConfig.uartOverSamplingMethod =OVERSAMPLING_13;
  uartEnvConfig.uartTxAgentConfig.uartBaudRate = BAUD_4800;
  uartEnvConfig.uartTxAgentConfig.uartDataType = SEVEN_BIT;
  uartEnvConfig.uartTxAgentConfig.uartStopBit = ONE_BIT;
  uartEnvConfig.uartTxAgentConfig.hasParity=PARITY_DISABLED;

  uartEnvConfig.uartRxAgentConfig.uartOverSamplingMethod =OVERSAMPLING_13;
  uartEnvConfig.uartRxAgentConfig.uartBaudRate = BAUD_4800;
  uartEnvConfig.uartRxAgentConfig.uartDataType = SEVEN_BIT;
  uartEnvConfig.uartRxAgentConfig.uartStopBit = ONE_BIT;
  uartEnvConfig.uartRxAgentConfig.hasParity=PARITY_DISABLED;

endfunction  : build_phase

//--------------------------------------------------------------------------------------------
// task:body
// Creates the required ports
//
// Parameters:
// phase - stores the current phase
//------------------------------------------------------------------------------------------
task UartSample13BaudRate4800Datatype7NoParityStopbit1:: run_phase(uvm_phase phase);
  super.run_phase(phase);
endtask : run_phase
`endif
