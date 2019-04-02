.class Lcom/android/camera/BeautyUI$2;
.super Ljava/lang/Object;
.source "BeautyUI.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BeautyUI;->initBeautyControl(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BeautyUI;


# direct methods
.method constructor <init>(Lcom/android/camera/BeautyUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BeautyUI;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/camera/BeautyUI$2;->this$0:Lcom/android/camera/BeautyUI;

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
    .line 264
    iget-object v0, p0, Lcom/android/camera/BeautyUI$2;->this$0:Lcom/android/camera/BeautyUI;

    invoke-static {v0}, Lcom/android/camera/BeautyUI;->access$000(Lcom/android/camera/BeautyUI;)Lcom/android/camera/BeautyController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/camera/BeautyUI$2;->this$0:Lcom/android/camera/BeautyUI;

    invoke-static {v0}, Lcom/android/camera/BeautyUI;->access$000(Lcom/android/camera/BeautyUI;)Lcom/android/camera/BeautyController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/camera/BeautyController;->onControlBarUpdate(I)V

    .line 266
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 271
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 276
    return-void
.end method
