.class Lcom/android/camera/ManualModule$7;
.super Ljava/lang/Object;
.source "ManualModule.java"

# interfaces
.implements Lcom/android/camera/app/CameraAppUI$BottomBarUISpec$ExposureCompensationSetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualModule;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualModule;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/camera/ManualModule$7;->this$0:Lcom/android/camera/ManualModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setExposure(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/camera/ManualModule$7;->this$0:Lcom/android/camera/ManualModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/ManualModule;->setExposureCompensation(I)V

    .line 677
    return-void
.end method
