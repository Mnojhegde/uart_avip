`ifndef UARTVIRTUALTRANSMISSIONSEQUENCEWITHPATTERN_INCLUDED_
`define UARTVIRTUALTRANSMISSIONSEQUENCEWITHPATTERN_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: uart_virtual_seqs
//--------------------------------------------------------------------------------------------
class UartVirtualTransmissionSequenceWithPattern extends UartVirtualBaseSequence;
  `uvm_object_utils(UartVirtualTransmissionSequenceWithPattern)
  `uvm_declare_p_sequencer(UartVirtualSequencer)
  
  UartTxBaseSequenceWithPattern uartTxBaseSequenceWithPattern;
  UartRxBaseSequence uartRxBaseSequence;
  UartTxAgentConfig uartTxAgentConfig;
  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "UartVirtualTransmissionSequenceWithPattern");
  extern virtual task body();
  extern task setConfig(UartTxAgentConfig uartTxAgentConfig);
endclass : UartVirtualTransmissionSequenceWithPattern
    
//--------------------------------------------------------------------------------------------
// Constructor:new
//
// Paramters:
// name - Instance name of the virtual_sequence
// parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
function UartVirtualTransmissionSequenceWithPattern :: new(string name = "UartVirtualTransmissionSequenceWithPattern" );
  super.new(name);
endfunction : new
    
//--------------------------------------------------------------------------------------------
// task:body
// Creates the required ports
// Parameters:
// phase - stores the current phase
//--------------------------------------------------------------------------------------------

task UartVirtualTransmissionSequenceWithPattern :: body();
  uartTxBaseSequenceWithPattern = UartTxBaseSequenceWithPattern :: type_id :: create("uartTxBaseSequenceWithPattern");
  uartRxBaseSequence = UartRxBaseSequence :: type_id :: create("uartRxBaseSequence");
  `uvm_do_on_with(uartTxBaseSequenceWithPattern , p_sequencer.uartTxSequencer,{packetsNeeded ==uartTxAgentConfig.packetsNeeded;patternToTransmit==uartTxAgentConfig.patternToTransmit;})
endtask : body

task UartVirtualTransmissionSequenceWithPattern :: setConfig(UartTxAgentConfig uartTxAgentConfig);
  this.uartTxAgentConfig = uartTxAgentConfig;
  endtask 
    
`endif
