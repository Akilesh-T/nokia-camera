.class Lcom/android/camera/TemplatePhotoModule$6;
.super Ljava/lang/Object;
.source "TemplatePhotoModule.java"

# interfaces
.implements Lcom/android/camera/app/CameraAppUI$BottomBarUISpec$ExposureCompensationSetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/TemplatePhotoModule;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TemplatePhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/TemplatePhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/camera/TemplatePhotoModule$6;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setExposure(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$6;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/TemplatePhotoModule;->setExposureCompensation(I)V

    .line 540
    return-void
.end method
