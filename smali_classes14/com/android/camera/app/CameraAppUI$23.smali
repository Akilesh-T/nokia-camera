.class Lcom/android/camera/app/CameraAppUI$23;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;ZZ)V
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
    .line 3415
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI$23;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3418
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$23;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->onSettingsSelected()V

    .line 3419
    return-void
.end method
