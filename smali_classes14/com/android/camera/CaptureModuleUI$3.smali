.class Lcom/android/camera/CaptureModuleUI$3;
.super Ljava/lang/Object;
.source "CaptureModuleUI.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModuleUI;->initBeautyControl(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModuleUI;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/camera/CaptureModuleUI$3;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$3;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v0}, Lcom/android/camera/CaptureModuleUI;->access$100(Lcom/android/camera/CaptureModuleUI;)Lcom/android/camera/CaptureModuleUI$CaptureModuleUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$3;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v0}, Lcom/android/camera/CaptureModuleUI;->access$100(Lcom/android/camera/CaptureModuleUI;)Lcom/android/camera/CaptureModuleUI$CaptureModuleUIListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/camera/CaptureModuleUI$CaptureModuleUIListener;->onControlBarUpdate(I)V

    .line 186
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 191
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 196
    return-void
.end method
