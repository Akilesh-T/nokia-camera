.class Lcom/android/camera/barcode/BarCodeUI$BarcodeThirdClickListener;
.super Ljava/lang/Object;
.source "BarCodeUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/barcode/BarCodeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarcodeThirdClickListener"
.end annotation


# instance fields
.field private barcode:Lcom/google/android/gms/vision/barcode/Barcode;

.field final synthetic this$0:Lcom/android/camera/barcode/BarCodeUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/barcode/BarCodeUI;Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 0
    .param p2, "barcode"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/camera/barcode/BarCodeUI$BarcodeThirdClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p2, p0, Lcom/android/camera/barcode/BarCodeUI$BarcodeThirdClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    .line 431
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 435
    const-string v1, ""

    .line 436
    .local v1, "lowerCaseString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/barcode/BarCodeUI$BarcodeThirdClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    iget v3, v3, Lcom/google/android/gms/vision/barcode/Barcode;->valueFormat:I

    packed-switch v3, :pswitch_data_0

    .line 480
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/android/camera/barcode/BarCodeUI$BarcodeThirdClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v3}, Lcom/android/camera/barcode/BarCodeUI;->access$800(Lcom/android/camera/barcode/BarCodeUI;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/barcode/BarCodeUI$BarcodeThirdClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v3}, Lcom/android/camera/barcode/BarCodeUI;->access$800(Lcom/android/camera/barcode/BarCodeUI;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 481
    iget-object v3, p0, Lcom/android/camera/barcode/BarCodeUI$BarcodeThirdClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v3}, Lcom/android/camera/barcode/BarCodeUI;->access$800(Lcom/android/camera/barcode/BarCodeUI;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 483
    :cond_0
    return-void

    .line 442
    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/barcode/BarCodeUI$BarcodeThirdClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v3}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 443
    .local v0, "cmText":Landroid/content/ClipboardManager;
    const-string v3, "Label"

    iget-object v4, p0, Lcom/android/camera/barcode/BarCodeUI$BarcodeThirdClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 444
    .local v2, "mClipDataText":Landroid/content/ClipData;
    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 445
    iget-object v3, p0, Lcom/android/camera/barcode/BarCodeUI$BarcodeThirdClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v3}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/barcode/BarCodeUI$BarcodeThirdClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v4}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08004f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 456
    .end local v0    # "cmText":Landroid/content/ClipboardManager;
    .end local v2    # "mClipDataText":Landroid/content/ClipData;
    :pswitch_2
    iget-object v3, p0, Lcom/android/camera/barcode/BarCodeUI$BarcodeThirdClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    iget-object v4, p0, Lcom/android/camera/barcode/BarCodeUI$BarcodeThirdClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode;->phone:Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/camera/barcode/BarCodeUI;->access$1000(Lcom/android/camera/barcode/BarCodeUI;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :pswitch_3
    iget-object v3, p0, Lcom/android/camera/barcode/BarCodeUI$BarcodeThirdClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    iget-object v4, p0, Lcom/android/camera/barcode/BarCodeUI$BarcodeThirdClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode;->sms:Lcom/google/android/gms/vision/barcode/Barcode$Sms;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode$Sms;->phoneNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/camera/barcode/BarCodeUI;->access$1000(Lcom/android/camera/barcode/BarCodeUI;Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
