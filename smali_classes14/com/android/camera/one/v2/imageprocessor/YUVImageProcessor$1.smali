.class Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$1;
.super Ljava/lang/Object;
.source "YUVImageProcessor.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->addFullSizeImage(Lcom/android/camera/one/CameraType;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
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
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$1;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 138
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$000()Lcom/android/camera/debug/Log$Tag;

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

    .line 139
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$1;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$100(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public onSuccess(Lcom/android/camera/processing/imagebackend/ImageInfo;)V
    .locals 3
    .param p1, "result"    # Lcom/android/camera/processing/imagebackend/ImageInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 127
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$000()Lcom/android/camera/debug/Log$Tag;

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

    .line 128
    if-nez p1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "get empty ImageInfo"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$1;->onFailure(Ljava/lang/Throwable;)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$1;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$100(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$1;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

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
    .line 124
    check-cast p1, Lcom/android/camera/processing/imagebackend/ImageInfo;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$1;->onSuccess(Lcom/android/camera/processing/imagebackend/ImageInfo;)V

    return-void
.end method
