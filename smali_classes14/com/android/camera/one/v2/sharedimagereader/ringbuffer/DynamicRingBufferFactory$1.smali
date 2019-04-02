.class Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory$1;
.super Ljava/lang/Object;
.source "DynamicRingBufferFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;Lcom/android/camera/async/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;

.field final synthetic val$maxRingBufferSize:Lcom/android/camera/async/Observable;

.field final synthetic val$ringBuffer:Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;Lcom/android/camera/async/Observable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory$1;->this$0:Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;

    iput-object p2, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory$1;->val$ringBuffer:Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;

    iput-object p3, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory$1;->val$maxRingBufferSize:Lcom/android/camera/async/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 52
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory$1;->val$ringBuffer:Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory$1;->val$maxRingBufferSize:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->setMaxSize(I)V

    .line 53
    return-void
.end method
