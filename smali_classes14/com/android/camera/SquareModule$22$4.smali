.class Lcom/android/camera/SquareModule$22$4;
.super Ljava/lang/Object;
.source "SquareModule.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SquareModule$22;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/SquareModule$22;


# direct methods
.method constructor <init>(Lcom/android/camera/SquareModule$22;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/SquareModule$22;

    .prologue
    .line 2354
    iput-object p1, p0, Lcom/android/camera/SquareModule$22$4;->this$1:Lcom/android/camera/SquareModule$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 2357
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .local v0, "image":Landroid/media/Image;
    const/4 v1, 0x0

    .line 2359
    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2361
    .end local v0    # "image":Landroid/media/Image;
    :cond_0
    :goto_0
    return-void

    .line 2359
    .restart local v0    # "image":Landroid/media/Image;
    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v0    # "image":Landroid/media/Image;
    :catch_1
    move-exception v1

    goto :goto_0

    .restart local v0    # "image":Landroid/media/Image;
    :cond_1
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method
