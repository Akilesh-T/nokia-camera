.class Lcom/android/camera/async/CountableBufferQueue$DecrementingProcessor;
.super Ljava/lang/Object;
.source "CountableBufferQueue.java"

# interfaces
.implements Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/async/CountableBufferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecrementingProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mProcessor:Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;

.field final synthetic this$0:Lcom/android/camera/async/CountableBufferQueue;


# direct methods
.method private constructor <init>(Lcom/android/camera/async/CountableBufferQueue;Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/android/camera/async/CountableBufferQueue$DecrementingProcessor;, "Lcom/android/camera/async/CountableBufferQueue<TT;>.DecrementingProcessor<TT;>;"
    .local p2, "processor":Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;, "Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor<TT;>;"
    iput-object p1, p0, Lcom/android/camera/async/CountableBufferQueue$DecrementingProcessor;->this$0:Lcom/android/camera/async/CountableBufferQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/android/camera/async/CountableBufferQueue$DecrementingProcessor;->mProcessor:Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/async/CountableBufferQueue;Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;Lcom/android/camera/async/CountableBufferQueue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/async/CountableBufferQueue;
    .param p2, "x1"    # Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;
    .param p3, "x2"    # Lcom/android/camera/async/CountableBufferQueue$1;

    .prologue
    .line 29
    .local p0, "this":Lcom/android/camera/async/CountableBufferQueue$DecrementingProcessor;, "Lcom/android/camera/async/CountableBufferQueue<TT;>.DecrementingProcessor<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/camera/async/CountableBufferQueue$DecrementingProcessor;-><init>(Lcom/android/camera/async/CountableBufferQueue;Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;)V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/android/camera/async/CountableBufferQueue$DecrementingProcessor;, "Lcom/android/camera/async/CountableBufferQueue<TT;>.DecrementingProcessor<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/camera/async/CountableBufferQueue$DecrementingProcessor;->mProcessor:Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;

    invoke-interface {v0, p1}, Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;->process(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/android/camera/async/CountableBufferQueue$DecrementingProcessor;->this$0:Lcom/android/camera/async/CountableBufferQueue;

    invoke-static {v0}, Lcom/android/camera/async/CountableBufferQueue;->access$000(Lcom/android/camera/async/CountableBufferQueue;)V

    .line 41
    return-void
.end method
