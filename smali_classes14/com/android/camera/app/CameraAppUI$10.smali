.class Lcom/android/camera/app/CameraAppUI$10;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/CameraAppUI;->prepareModuleUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/CameraAppUI;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraAppUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 2002
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI$10;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewAspectRatioChanged(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$10;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/app/CameraAppUI;->access$2100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/widget/ModeOptionsOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/ModeOptionsOverlay;->requestLayout()V

    .line 2006
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$10;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/app/CameraAppUI;->access$2200(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/operation/BottomBarOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/BottomBarOperation;->requestLayout()V

    .line 2007
    return-void
.end method
