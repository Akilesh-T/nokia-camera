.class Lcom/android/camera/PhotoModule$12;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/camera/app/CameraAppUI$BottomBarUISpec$ExposureCompensationSetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 958
    iput-object p1, p0, Lcom/android/camera/PhotoModule$12;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setExposure(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/camera/PhotoModule$12;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoModule;->setExposureCompensation(I)V

    .line 962
    return-void
.end method
