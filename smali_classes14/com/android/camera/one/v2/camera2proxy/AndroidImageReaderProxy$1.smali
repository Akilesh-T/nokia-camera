.class Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy$1;
.super Ljava/lang/Object;
.source "AndroidImageReaderProxy.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->setOnImageAvailableListener(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;

.field final synthetic val$listener:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy$1;->this$0:Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;

    iput-object p2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy$1;->val$listener:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1
    .param p1, "imageReader"    # Landroid/media/ImageReader;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy$1;->val$listener:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;->onImageAvailable()V

    .line 149
    return-void
.end method
