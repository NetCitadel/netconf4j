package net.i2cat.netconf.rpc;

import net.i2cat.netconf.messageQueue.MessageQueue;

/**
 * An RPCElement to insert into the MessageQueue and trigger an abort.
 */
public class Abort extends RPCElement {
    private String message;
    private Exception exception;

    public Abort(String message, Exception exception){
        this.message = message;
        this.exception = exception;
        this.messageId = MessageQueue.ABORT_MESSAGE_ID;
    }

    public Abort(String message) {
        this(message, null);
    }

    public Abort(Exception exception) {
        this("Abort", exception);
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Exception getException() {
        return exception;
    }

    public void setException(Exception exception) {
        this.exception = exception;
    }
}
