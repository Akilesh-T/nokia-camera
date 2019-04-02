.class Lcom/android/camera/app/CameraAppUI$24;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/CameraAppUI;->getDisableButtonCallback(I)Lcom/android/camera/ButtonManager$ButtonCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/CameraAppUI;

.field final synthetic val$conflictingButton:I


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraAppUI;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 3549
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI$24;->this$0:Lcom/android/camera/app/CameraAppUI;

    iput p2, p0, Lcom/android/camera/app/CameraAppUI$24;->val$conflictingButton:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 3558
    return-void
.end method

.method public onStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 3552
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$24;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/app/CameraAppUI;->access$100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/app/CameraAppUI$24;->val$conflictingButton:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ButtonManager;->disableButton(I)V

    .line 3553
    return-void
.end method
