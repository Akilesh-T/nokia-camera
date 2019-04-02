.class Lcom/android/camera/async/CountableBufferQueue$1;
.super Ljava/lang/Object;
.source "CountableBufferQueue.java"

# interfaces
.implements Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/async/CountableBufferQueue;-><init>(Lcom/android/camera/async/ConcurrentState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    .local p0, "this":Lcom/android/camera/async/CountableBufferQueue$1;, "Lcom/android/camera/async/CountableBufferQueue$1;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/android/camera/async/CountableBufferQueue$1;, "Lcom/android/camera/async/CountableBufferQueue$1;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    return-void
.end method
