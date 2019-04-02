.class Lcom/android/camera/BokehModule$9;
.super Ljava/lang/Object;
.source "BokehModule.java"

# interfaces
.implements Lcom/android/camera/app/CameraAppUI$BottomBarUISpec$ExposureCompensationSetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehModule;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehModule;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 748
    iput-object p1, p0, Lcom/android/camera/BokehModule$9;->this$0:Lcom/android/camera/BokehModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setExposure(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/camera/BokehModule$9;->this$0:Lcom/android/camera/BokehModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/BokehModule;->setExposureCompensation(I)V

    .line 752
    return-void
.end method
