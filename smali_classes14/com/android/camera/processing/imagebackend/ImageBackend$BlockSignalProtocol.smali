.class public Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;
.super Ljava/lang/Object;
.source "ImageBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/imagebackend/ImageBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockSignalProtocol"
.end annotation


# instance fields
.field private count:I

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mSignal:Ljava/util/concurrent/locks/Condition;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 916
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->count:I

    .line 917
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->mSignal:Ljava/util/concurrent/locks/Condition;

    .line 918
    return-void
.end method


# virtual methods
.method public addCount(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 908
    :try_start_0
    iget v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->count:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->count:I

    .line 909
    iget v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 909
    return v0

    .line 911
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public block()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 921
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 923
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->count:I

    if-eqz v1, :cond_0

    .line 925
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->mSignal:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 927
    :catch_0
    move-exception v0

    .line 929
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 931
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 933
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 899
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 900
    iget v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->count:I

    .line 901
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 902
    return v0
.end method

.method public setCount(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 893
    iput p1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->count:I

    .line 894
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 895
    return-void
.end method

.method public signal()V
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 937
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->mSignal:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 938
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 939
    return-void
.end method
