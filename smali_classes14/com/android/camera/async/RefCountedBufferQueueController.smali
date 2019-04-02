.class public Lcom/android/camera/async/RefCountedBufferQueueController;
.super Ljava/lang/Object;
.source "RefCountedBufferQueueController.java"

# interfaces
.implements Lcom/android/camera/async/BufferQueueController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/BufferQueueController",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mBuffer:Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/async/BufferQueueController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/async/BufferQueueController;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/BufferQueueController",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/android/camera/async/RefCountedBufferQueueController;, "Lcom/android/camera/async/RefCountedBufferQueueController<TT;>;"
    .local p1, "stream":Lcom/android/camera/async/BufferQueueController;, "Lcom/android/camera/async/BufferQueueController<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/android/camera/async/RefCountBase;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/camera/async/RefCountBase;-><init>(Lcom/android/camera/async/SafeCloseable;I)V

    iput-object v0, p0, Lcom/android/camera/async/RefCountedBufferQueueController;->mBuffer:Lcom/android/camera/async/RefCountBase;

    .line 29
    return-void
.end method


# virtual methods
.method public addRef()V
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lcom/android/camera/async/RefCountedBufferQueueController;, "Lcom/android/camera/async/RefCountedBufferQueueController<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/RefCountedBufferQueueController;->mBuffer:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 43
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/android/camera/async/RefCountedBufferQueueController;, "Lcom/android/camera/async/RefCountedBufferQueueController<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/RefCountedBufferQueueController;->mBuffer:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 48
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/android/camera/async/RefCountedBufferQueueController;, "Lcom/android/camera/async/RefCountedBufferQueueController<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/RefCountedBufferQueueController;->mBuffer:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/async/BufferQueueController;

    invoke-interface {v0}, Lcom/android/camera/async/BufferQueueController;->isClosed()Z

    move-result v0

    return v0
.end method

.method public update(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/android/camera/async/RefCountedBufferQueueController;, "Lcom/android/camera/async/RefCountedBufferQueueController<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/camera/async/RefCountedBufferQueueController;->mBuffer:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/async/BufferQueueController;

    invoke-interface {v0, p1}, Lcom/android/camera/async/BufferQueueController;->update(Ljava/lang/Object;)V

    .line 34
    return-void
.end method
