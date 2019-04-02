.class Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;
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
    name = "BarcodeClickListener"
.end annotation


# instance fields
.field private barcode:Lcom/google/android/gms/vision/barcode/Barcode;

.field final synthetic this$0:Lcom/android/camera/barcode/BarCodeUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/barcode/BarCodeUI;Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 0
    .param p2, "barcode"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p2, p0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    .line 232
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 21
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 236
    const-string v13, ""

    .line 237
    .local v13, "lowerCaseString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/gms/vision/barcode/Barcode;->valueFormat:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 344
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/barcode/BarCodeUI;->access$800(Lcom/android/camera/barcode/BarCodeUI;)Landroid/app/AlertDialog;

    move-result-object v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/barcode/BarCodeUI;->access$800(Lcom/android/camera/barcode/BarCodeUI;)Landroid/app/AlertDialog;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/barcode/BarCodeUI;->access$800(Lcom/android/camera/barcode/BarCodeUI;)Landroid/app/AlertDialog;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->dismiss()V

    .line 347
    :cond_1
    return-void

    .line 239
    :pswitch_1
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v10, "intentUrl":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode;->url:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode;->url:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 241
    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode;->url:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 253
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 244
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    .line 245
    .local v3, "barValue":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, "http"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, "https"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 246
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "http://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 250
    :goto_2
    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 248
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const-string v19, ":"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 256
    .end local v3    # "barValue":Ljava/lang/String;
    .end local v10    # "intentUrl":Landroid/content/Intent;
    :pswitch_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 257
    .local v6, "intentGeo":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    .line 258
    .restart local v3    # "barValue":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const-string v19, ":"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 260
    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 265
    .end local v3    # "barValue":Ljava/lang/String;
    .end local v6    # "intentGeo":Landroid/content/Intent;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/camera/barcode/BarCodeUI;->access$100(Lcom/android/camera/barcode/BarCodeUI;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 268
    :pswitch_4
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 269
    .local v7, "intentIsbn":Landroid/content/Intent;
    const-string v17, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v17, "query"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 274
    .end local v7    # "intentIsbn":Landroid/content/Intent;
    :pswitch_5
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 275
    .local v8, "intentPhone":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 276
    const-string v17, "android.intent.action.DIAL"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 281
    .end local v8    # "intentPhone":Landroid/content/Intent;
    :pswitch_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "smsto:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode;->sms:Lcom/google/android/gms/vision/barcode/Barcode$Sms;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$Sms;->phoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 282
    .local v16, "uri":Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 283
    .local v9, "intentSms":Landroid/content/Intent;
    const-string v17, "sms_body"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode;->sms:Lcom/google/android/gms/vision/barcode/Barcode$Sms;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$Sms;->message:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 287
    .end local v9    # "intentSms":Landroid/content/Intent;
    .end local v16    # "uri":Landroid/net/Uri;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/vision/barcode/Barcode;->email:Lcom/google/android/gms/vision/barcode/Barcode$Email;

    .line 289
    .local v4, "email":Lcom/google/android/gms/vision/barcode/Barcode$Email;
    new-instance v5, Landroid/content/Intent;

    const-string v17, "android.intent.action.SEND"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v5, "intentEmail":Landroid/content/Intent;
    const-string v17, "plain/text"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    .line 293
    .local v15, "reciever":[Ljava/lang/String;
    const/16 v17, 0x0

    iget-object v0, v4, Lcom/google/android/gms/vision/barcode/Barcode$Email;->address:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v15, v17

    .line 294
    const-string v17, "android.intent.extra.EMAIL"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v17, "android.intent.extra.SUBJECT"

    iget-object v0, v4, Lcom/google/android/gms/vision/barcode/Barcode$Email;->subject:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v17, "android.intent.extra.TEXT"

    iget-object v0, v4, Lcom/google/android/gms/vision/barcode/Barcode$Email;->body:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 300
    .end local v4    # "email":Lcom/google/android/gms/vision/barcode/Barcode$Email;
    .end local v5    # "intentEmail":Landroid/content/Intent;
    .end local v15    # "reciever":[Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/barcode/BarCodeUI;->access$200(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/barcode/WifiAdmin;

    move-result-object v17

    if-nez v17, :cond_4

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/camera/barcode/WifiAdmin;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/android/camera/barcode/WifiAdmin;-><init>(Landroid/content/Context;)V

    invoke-static/range {v17 .. v18}, Lcom/android/camera/barcode/BarCodeUI;->access$202(Lcom/android/camera/barcode/BarCodeUI;Lcom/android/camera/barcode/WifiAdmin;)Lcom/android/camera/barcode/WifiAdmin;

    .line 303
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/barcode/BarCodeUI;->access$200(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/barcode/WifiAdmin;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/barcode/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v17

    if-nez v17, :cond_5

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/barcode/BarCodeUI;->access$200(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/barcode/WifiAdmin;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/barcode/WifiAdmin;->openWifi()V

    .line 306
    :cond_5
    const/16 v14, 0x13

    .line 307
    .local v14, "net_type":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode;->wifi:Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->encryptionType:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 308
    const/16 v14, 0x13

    .line 315
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/barcode/BarCodeUI;->access$200(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/barcode/WifiAdmin;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode;->wifi:Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->ssid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode;->wifi:Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->password:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v14}, Lcom/android/camera/barcode/WifiAdmin;->addNetwork(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 309
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode;->wifi:Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->encryptionType:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 310
    const/16 v14, 0x12

    goto :goto_3

    .line 312
    :cond_7
    const/16 v14, 0x11

    goto :goto_3

    .line 320
    .end local v14    # "net_type":I
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/barcode/BarCodeUI;->access$300(Lcom/android/camera/barcode/BarCodeUI;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/android/camera/barcode/BarCodeUI;->access$400(Lcom/android/camera/barcode/BarCodeUI;Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode;)V

    goto/16 :goto_0

    .line 328
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/barcode/BarCodeUI;->access$500(Lcom/android/camera/barcode/BarCodeUI;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/android/camera/barcode/BarCodeUI;->access$600(Lcom/android/camera/barcode/BarCodeUI;Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode;)V

    goto/16 :goto_0

    .line 335
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    .line 336
    .local v11, "license":Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v17, v0

    const v18, 0x7f080025

    invoke-static/range {v17 .. v18}, Lcom/android/camera/barcode/BarCodeUI;->access$700(Lcom/android/camera/barcode/BarCodeUI;I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0xe

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->licenseNumber:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressCity:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x2

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressState:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x3

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressStreet:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x4

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressZip:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x5

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->birthDate:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x6

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->documentType:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x7

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->expiryDate:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x8

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->firstName:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x9

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->middleName:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0xa

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->lastName:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0xb

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->gender:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0xc

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->issueDate:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0xd

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->issuingCountry:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 339
    .local v12, "licenseText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v12, v1}, Lcom/android/camera/barcode/BarCodeUI;->access$100(Lcom/android/camera/barcode/BarCodeUI;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_1
        :pswitch_8
        :pswitch_2
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
