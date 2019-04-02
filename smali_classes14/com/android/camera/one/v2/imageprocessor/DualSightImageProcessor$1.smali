.class Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$1;
.super Ljava/lang/Object;
.source "DualSightImageProcessor.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->addFullSizeImage(Lcom/android/camera/one/DualSightCamType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/android/camera/processing/imagebackend/ImageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$1;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 106
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageInfo onFailure : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$1;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$100(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public onSuccess(Lcom/android/camera/processing/imagebackend/ImageInfo;)V
    .locals 3
    .param p1, "result"    # Lcom/android/camera/processing/imagebackend/ImageInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageInfo onSuccess : result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "get empty ImageInfo"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$1;->onFailure(Ljava/lang/Throwable;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$1;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$100(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$1;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "mImageInfo get"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 92
    check-cast p1, Lcom/android/camera/processing/imagebackend/ImageInfo;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$1;->onSuccess(Lcom/android/camera/processing/imagebackend/ImageInfo;)V

    return-void
.end method
