.class Lcom/android/camera/util/ConcurrentSharedRingBuffer$1;
.super Ljava/lang/Object;
.source "ConcurrentSharedRingBuffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/util/ConcurrentSharedRingBuffer;->notifyPinStateChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/util/ConcurrentSharedRingBuffer;

.field final synthetic val$listener:Lcom/android/camera/util/ConcurrentSharedRingBuffer$PinStateListener;

.field final synthetic val$pinsAvailable:Z


# direct methods
.method constructor <init>(Lcom/android/camera/util/ConcurrentSharedRingBuffer;Lcom/android/camera/util/ConcurrentSharedRingBuffer$PinStateListener;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/util/ConcurrentSharedRingBuffer;

    .prologue
    .line 626
    .local p0, "this":Lcom/android/camera/util/ConcurrentSharedRingBuffer$1;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$1;"
    iput-object p1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer$1;->this$0:Lcom/android/camera/util/ConcurrentSharedRingBuffer;

    iput-object p2, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer$1;->val$listener:Lcom/android/camera/util/ConcurrentSharedRingBuffer$PinStateListener;

    iput-boolean p3, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer$1;->val$pinsAvailable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 629
    .local p0, "this":Lcom/android/camera/util/ConcurrentSharedRingBuffer$1;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$1;"
    iget-object v0, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer$1;->val$listener:Lcom/android/camera/util/ConcurrentSharedRingBuffer$PinStateListener;

    iget-boolean v1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer$1;->val$pinsAvailable:Z

    invoke-interface {v0, v1}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$PinStateListener;->onPinStateChange(Z)V

    .line 630
    return-void
.end method
