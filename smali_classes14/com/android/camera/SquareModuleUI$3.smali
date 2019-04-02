.class Lcom/android/camera/SquareModuleUI$3;
.super Ljava/lang/Object;
.source "SquareModuleUI.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SquareModuleUI;->initBeautyControl(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SquareModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/SquareModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SquareModuleUI;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/camera/SquareModuleUI$3;->this$0:Lcom/android/camera/SquareModuleUI;

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
    .line 182
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI$3;->this$0:Lcom/android/camera/SquareModuleUI;

    invoke-static {v0}, Lcom/android/camera/SquareModuleUI;->access$100(Lcom/android/camera/SquareModuleUI;)Lcom/android/camera/SquareModuleUI$SquareModuleUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI$3;->this$0:Lcom/android/camera/SquareModuleUI;

    invoke-static {v0}, Lcom/android/camera/SquareModuleUI;->access$100(Lcom/android/camera/SquareModuleUI;)Lcom/android/camera/SquareModuleUI$SquareModuleUIListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/camera/SquareModuleUI$SquareModuleUIListener;->onControlBarUpdate(I)V

    .line 184
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 189
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 194
    return-void
.end method
