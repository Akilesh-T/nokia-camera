.class Lcom/android/camera/async/ConcurrentBufferQueue$Entry;
.super Ljava/lang/Object;
.source "ConcurrentBufferQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/async/ConcurrentBufferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mClosing:Z

.field private final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .param p2, "closing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/android/camera/async/ConcurrentBufferQueue$Entry;, "Lcom/android/camera/async/ConcurrentBufferQueue$Entry<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;->mValue:Ljava/lang/Object;

    .line 64
    iput-boolean p2, p0, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;->mClosing:Z

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;ZLcom/android/camera/async/ConcurrentBufferQueue$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/android/camera/async/ConcurrentBufferQueue$1;

    .prologue
    .line 58
    .local p0, "this":Lcom/android/camera/async/ConcurrentBufferQueue$Entry;, "Lcom/android/camera/async/ConcurrentBufferQueue$Entry<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/android/camera/async/ConcurrentBufferQueue$Entry;, "Lcom/android/camera/async/ConcurrentBufferQueue$Entry<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public isClosingMarker()Z
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lcom/android/camera/async/ConcurrentBufferQueue$Entry;, "Lcom/android/camera/async/ConcurrentBufferQueue$Entry<TT;>;"
    iget-boolean v0, p0, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;->mClosing:Z

    return v0
.end method
