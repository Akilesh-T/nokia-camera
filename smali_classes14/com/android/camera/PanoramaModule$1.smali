.class Lcom/android/camera/PanoramaModule$1;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/android/camera/app/CameraAppUI$BottomBarUISpec$ExposureCompensationSetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaModule;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$1;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setExposure(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$1;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/PanoramaModule;->setExposureCompensation(I)V

    .line 313
    return-void
.end method
