.class Lcom/android/camera/TemplatePhotoModule$ShutterCallback$1;
.super Ljava/lang/Object;
.source "TemplatePhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/TemplatePhotoModule$ShutterCallback;->onShutter(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/TemplatePhotoModule$ShutterCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/TemplatePhotoModule$ShutterCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/TemplatePhotoModule$ShutterCallback;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/android/camera/TemplatePhotoModule$ShutterCallback$1;->this$1:Lcom/android/camera/TemplatePhotoModule$ShutterCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$ShutterCallback$1;->this$1:Lcom/android/camera/TemplatePhotoModule$ShutterCallback;

    iget-object v0, v0, Lcom/android/camera/TemplatePhotoModule$ShutterCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoModule;->access$1500(Lcom/android/camera/TemplatePhotoModule;)V

    .line 672
    return-void
.end method
