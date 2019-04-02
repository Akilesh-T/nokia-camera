.class Lcom/android/camera/ui/watermark/WatermarkViewLayout$5;
.super Ljava/lang/Object;
.source "WatermarkViewLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/watermark/WatermarkViewLayout;->showEditAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/watermark/WatermarkViewLayout;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$5;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    iput-object p2, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$5;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 310
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$5;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-static {v1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$300(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getWatermarkManager()Lcom/android/camera/WatermarkManager;

    move-result-object v0

    .line 311
    .local v0, "watermarkManager":Lcom/android/camera/WatermarkManager;
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$5;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-static {v1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$500(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$5;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/WatermarkManager;->setFreeTextInfoData(Ljava/lang/String;)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$5;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-static {v1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$700(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$5;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/WatermarkManager;->setLocationInfoData(Ljava/lang/String;Z)V

    goto :goto_0
.end method
