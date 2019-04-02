.class Lcom/android/camera/barcode/BarCodeDialog$BarcodeThirdClickListener;
.super Ljava/lang/Object;
.source "BarCodeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/barcode/BarCodeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarcodeThirdClickListener"
.end annotation


# instance fields
.field private barcode:Lcom/google/android/gms/vision/barcode/Barcode;

.field final synthetic this$0:Lcom/android/camera/barcode/BarCodeDialog;


# direct methods
.method public constructor <init>(Lcom/android/camera/barcode/BarCodeDialog;Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 0
    .param p2, "barcode"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/camera/barcode/BarCodeDialog$BarcodeThirdClickListener;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-object p2, p0, Lcom/android/camera/barcode/BarCodeDialog$BarcodeThirdClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    .line 452
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 456
    const-string v1, ""

    .line 457
    .local v1, "lowerCaseString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/barcode/BarCodeDialog$BarcodeThirdClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    iget v3, v3, Lcom/google/android/gms/vision/barcode/Barcode;->valueFormat:I

    packed-switch v3, :pswitch_data_0

    .line 506
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/android/camera/barcode/BarCodeDialog$BarcodeThirdClickListener;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    invoke-static {v3}, Lcom/android/camera/barcode/BarCodeDialog;->access$000(Lcom/android/camera/barcode/BarCodeDialog;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/barcode/BarCodeDialog$BarcodeThirdClickListener;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    invoke-static {v3}, Lcom/android/camera/barcode/BarCodeDialog;->access$000(Lcom/android/camera/barcode/BarCodeDialog;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 507
    iget-object v3, p0, Lcom/android/camera/barcode/BarCodeDialog$BarcodeThirdClickListener;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    invoke-static {v3}, Lcom/android/camera/barcode/BarCodeDialog;->access$000(Lcom/android/camera/barcode/BarCodeDialog;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 509
    :cond_0
    return-void

    .line 463
    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/barcode/BarCodeDialog$BarcodeThirdClickListener;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    invoke-static {v3}, Lcom/android/camera/barcode/BarCodeDialog;->access$100(Lcom/android/camera/barcode/BarCodeDialog;)Lcom/android/camera/app/AppController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 464
    .local v0, "cmText":Landroid/content/ClipboardManager;
    const-string v3, "Label"

    iget-object v4, p0, Lcom/android/camera/barcode/BarCodeDialog$BarcodeThirdClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 465
    .local v2, "mClipDataText":Landroid/content/ClipData;
    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 468
    iget-object v3, p0, Lcom/android/camera/barcode/BarCodeDialog$BarcodeThirdClickListener;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    iget-object v4, p0, Lcom/android/camera/barcode/BarCodeDialog$BarcodeThirdClickListener;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    invoke-static {v4}, Lcom/android/camera/barcode/BarCodeDialog;->access$100(Lcom/android/camera/barcode/BarCodeDialog;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/barcode/BarCodeDialog$BarcodeThirdClickListener;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    invoke-static {v5}, Lcom/android/camera/barcode/BarCodeDialog;->access$100(Lcom/android/camera/barcode/BarCodeDialog;)Lcom/android/camera/app/AppController;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08004f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, v3, Lcom/android/camera/barcode/BarCodeDialog;->toast:Landroid/widget/Toast;

    .line 469
    iget-object v3, p0, Lcom/android/camera/barcode/BarCodeDialog$BarcodeThirdClickListener;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    iget-object v3, v3, Lcom/android/camera/barcode/BarCodeDialog;->toast:Landroid/widget/Toast;

    const/16 v4, 0x11

    invoke-virtual {v3, v4, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 470
    iget-object v3, p0, Lcom/android/camera/barcode/BarCodeDialog$BarcodeThirdClickListener;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    iget-object v3, v3, Lcom/android/camera/barcode/BarCodeDialog;->toast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 482
    .end local v0    # "cmText":Landroid/content/ClipboardManager;
    .end local v2    # "mClipDataText":Landroid/content/ClipData;
    :pswitch_2
    iget-object v3, p0, Lcom/android/camera/barcode/BarCodeDialog$BarcodeThirdClickListener;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    iget-object v4, p0, Lcom/android/camera/barcode/BarCodeDialog$BarcodeThirdClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode;->phone:Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/camera/barcode/BarCodeDialog;->access$1000(Lcom/android/camera/barcode/BarCodeDialog;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    :pswitch_3
    iget-object v3, p0, Lcom/android/camera/barcode/BarCodeDialog$BarcodeThirdClickListener;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    iget-object v4, p0, Lcom/android/camera/barcode/BarCodeDialog$BarcodeThirdClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode;->sms:Lcom/google/android/gms/vision/barcode/Barcode$Sms;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode$Sms;->phoneNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/camera/barcode/BarCodeDialog;->access$1000(Lcom/android/camera/barcode/BarCodeDialog;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 457
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
