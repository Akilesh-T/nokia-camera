.class Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk$1;
.super Ljava/lang/Object;
.source "TaskWriteRawImageToDisk.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;->run()V
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
        "Lcom/google/common/base/Optional",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;


# direct methods
.method constructor <init>(Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 125
    return-void
.end method

.method public onSuccess(Lcom/google/common/base/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "pathOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 115
    check-cast p1, Lcom/google/common/base/Optional;

    invoke-virtual {p0, p1}, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk$1;->onSuccess(Lcom/google/common/base/Optional;)V

    return-void
.end method
