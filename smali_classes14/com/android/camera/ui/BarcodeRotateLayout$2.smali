.class Lcom/android/camera/ui/BarcodeRotateLayout$2;
.super Ljava/lang/Object;
.source "BarcodeRotateLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/BarcodeRotateLayout;->updateBarCodeText(Lcom/android/camera/barcode/BarCodeResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

.field final synthetic val$data:Lcom/android/camera/barcode/BarCodeResult;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/BarcodeRotateLayout;Lcom/android/camera/barcode/BarCodeResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/BarcodeRotateLayout;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    iput-object p2, p0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->val$data:Lcom/android/camera/barcode/BarCodeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->val$data:Lcom/android/camera/barcode/BarCodeResult;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/barcode/BarCodeResult;->getGoogleBarCode()Lcom/google/android/gms/vision/barcode/Barcode;

    move-result-object v11

    .line 134
    .local v11, "googleResult":Lcom/google/android/gms/vision/barcode/Barcode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->val$data:Lcom/android/camera/barcode/BarCodeResult;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/barcode/BarCodeResult;->getZxingResult()Lcom/google/zxing/Result;

    move-result-object v22

    .line 135
    .local v22, "zxingResult":Lcom/google/zxing/Result;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->val$data:Lcom/android/camera/barcode/BarCodeResult;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/barcode/BarCodeResult;->getType()Lcom/android/camera/barcode/BarCodeResult$ResultType;

    move-result-object v14

    .line 136
    .local v14, "resultType":Lcom/android/camera/barcode/BarCodeResult$ResultType;
    invoke-static {}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "resultType: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    if-nez v14, :cond_1

    .line 138
    invoke-static {}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v23

    const-string v24, "resultType is null, so return "

    invoke-static/range {v23 .. v24}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    sget-object v23, Lcom/android/camera/ui/BarcodeRotateLayout$5;->$SwitchMap$com$android$camera$barcode$BarCodeResult$ResultType:[I

    invoke-virtual {v14}, Lcom/android/camera/barcode/BarCodeResult$ResultType;->ordinal()I

    move-result v24

    aget v23, v23, v24

    packed-switch v23, :pswitch_data_0

    .line 369
    if-eqz v11, :cond_1b

    .line 370
    iget-object v5, v11, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    .line 371
    .local v5, "barValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    .end local v5    # "barValue":Ljava/lang/String;
    :cond_2
    :goto_1
    if-nez v11, :cond_3

    if-eqz v22, :cond_0

    .line 379
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->startShowAnimation()V

    goto :goto_0

    .line 144
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$400(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$500(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$500(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x5

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setGravity(I)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$500(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const v24, 0x7f080023

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$600(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const v24, 0x7f080032

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 150
    if-eqz v11, :cond_5

    .line 151
    invoke-static {}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v23

    const-string v24, "resultType: google"

    invoke-static/range {v23 .. v24}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    iget-object v5, v11, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    .line 153
    .restart local v5    # "barValue":Ljava/lang/String;
    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode;->url:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode;->url:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;->url:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode;->url:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;->url:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 156
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 158
    .end local v5    # "barValue":Ljava/lang/String;
    :cond_5
    if-eqz v22, :cond_2

    .line 159
    invoke-static {}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v23

    const-string v24, "resultType: zxing"

    invoke-static/range {v23 .. v24}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 160
    invoke-static/range {v22 .. v22}, Lcom/google/zxing/client/result/URIResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v23

    check-cast v23, Lcom/google/zxing/client/result/URIParsedResult;

    move-object/from16 v19, v23

    check-cast v19, Lcom/google/zxing/client/result/URIParsedResult;

    .line 161
    .local v19, "uriParsedResult":Lcom/google/zxing/client/result/URIParsedResult;
    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_6

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 164
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 170
    .end local v19    # "uriParsedResult":Lcom/google/zxing/client/result/URIParsedResult;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$400(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$500(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$600(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const v24, 0x7f08002c

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 174
    if-eqz v11, :cond_7

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode;->geoPoint:Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->lat:D

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode;->geoPoint:Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->lng:D

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 176
    :cond_7
    if-eqz v22, :cond_2

    .line 177
    invoke-static {}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v23

    const-string v24, "resultType: zxing"

    invoke-static/range {v23 .. v24}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    invoke-static/range {v22 .. v22}, Lcom/google/zxing/client/result/GeoResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v23

    check-cast v23, Lcom/google/zxing/client/result/GeoParsedResult;

    move-object/from16 v10, v23

    check-cast v10, Lcom/google/zxing/client/result/GeoParsedResult;

    .line 179
    .local v10, "geoParsedResult":Lcom/google/zxing/client/result/GeoParsedResult;
    if-eqz v10, :cond_2

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/google/zxing/client/result/GeoParsedResult;->getLatitude()D

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v10}, Lcom/google/zxing/client/result/GeoParsedResult;->getLongitude()D

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 186
    .end local v10    # "geoParsedResult":Lcom/google/zxing/client/result/GeoParsedResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$400(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$500(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$600(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const v24, 0x7f080031

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 191
    if-eqz v11, :cond_8

    .line 192
    iget-object v5, v11, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    .line 193
    .restart local v5    # "barValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 194
    .end local v5    # "barValue":Ljava/lang/String;
    :cond_8
    if-eqz v22, :cond_2

    .line 195
    invoke-static/range {v22 .. v22}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v23

    check-cast v23, Lcom/google/zxing/client/result/TextParsedResult;

    move-object/from16 v18, v23

    check-cast v18, Lcom/google/zxing/client/result/TextParsedResult;

    .line 196
    .local v18, "textParsedResult":Lcom/google/zxing/client/result/TextParsedResult;
    if-eqz v18, :cond_2

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/TextParsedResult;->getText()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 202
    .end local v18    # "textParsedResult":Lcom/google/zxing/client/result/TextParsedResult;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$400(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$400(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const v24, 0x7f080024

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$500(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$500(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const v24, 0x7f080023

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$600(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const v24, 0x7f08002d

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 208
    if-eqz v11, :cond_9

    .line 209
    iget-object v5, v11, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    .line 210
    .restart local v5    # "barValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 211
    .end local v5    # "barValue":Ljava/lang/String;
    :cond_9
    if-eqz v22, :cond_2

    .line 212
    invoke-static/range {v22 .. v22}, Lcom/google/zxing/client/result/ISBNResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v23

    check-cast v23, Lcom/google/zxing/client/result/ISBNParsedResult;

    move-object/from16 v12, v23

    check-cast v12, Lcom/google/zxing/client/result/ISBNParsedResult;

    .line 213
    .local v12, "isbnParsedResult":Lcom/google/zxing/client/result/ISBNParsedResult;
    if-eqz v12, :cond_2

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual {v12}, Lcom/google/zxing/client/result/ISBNParsedResult;->getISBN()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 219
    .end local v12    # "isbnParsedResult":Lcom/google/zxing/client/result/ISBNParsedResult;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$400(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$400(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const v24, 0x7f080026

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$500(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$500(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const v24, 0x7f080024

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$600(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const v24, 0x7f08002f

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 225
    if-eqz v11, :cond_a

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode;->phone:Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->number:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 227
    :cond_a
    if-eqz v22, :cond_2

    .line 228
    invoke-static/range {v22 .. v22}, Lcom/google/zxing/client/result/TelResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v23

    check-cast v23, Lcom/google/zxing/client/result/TelParsedResult;

    move-object/from16 v17, v23

    check-cast v17, Lcom/google/zxing/client/result/TelParsedResult;

    .line 229
    .local v17, "telParsedResult":Lcom/google/zxing/client/result/TelParsedResult;
    if-eqz v17, :cond_2

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/client/result/TelParsedResult;->getNumber()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 235
    .end local v17    # "telParsedResult":Lcom/google/zxing/client/result/TelParsedResult;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$400(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$400(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const v24, 0x7f08002f

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$500(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$500(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const v24, 0x7f080024

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$600(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const v24, 0x7f080030

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 241
    if-eqz v11, :cond_b

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode;->sms:Lcom/google/android/gms/vision/barcode/Barcode$Sms;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$Sms;->phoneNumber:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 243
    :cond_b
    if-eqz v22, :cond_2

    .line 244
    invoke-static/range {v22 .. v22}, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v23

    check-cast v23, Lcom/google/zxing/client/result/SMSParsedResult;

    move-object/from16 v16, v23

    check-cast v16, Lcom/google/zxing/client/result/SMSParsedResult;

    .line 245
    .local v16, "smsParsedResult":Lcom/google/zxing/client/result/SMSParsedResult;
    if-nez v16, :cond_c

    .line 246
    invoke-static/range {v22 .. v22}, Lcom/google/zxing/client/result/SMSMMSResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v23

    check-cast v23, Lcom/google/zxing/client/result/SMSParsedResult;

    move-object/from16 v16, v23

    check-cast v16, Lcom/google/zxing/client/result/SMSParsedResult;

    .line 247
    if-eqz v16, :cond_2

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/client/result/SMSParsedResult;->getNumbers()[Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 252
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/client/result/SMSParsedResult;->getNumbers()[Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 258
    .end local v16    # "smsParsedResult":Lcom/google/zxing/client/result/SMSParsedResult;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$500(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$400(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$400(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x5

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setGravity(I)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$400(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const v24, 0x7f080024

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$600(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const v24, 0x7f08002b

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 264
    if-eqz v11, :cond_d

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode;->email:Lcom/google/android/gms/vision/barcode/Barcode$Email;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$Email;->address:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 266
    :cond_d
    if-eqz v22, :cond_2

    .line 267
    invoke-static/range {v22 .. v22}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    .line 268
    .local v8, "emailAddressParsedResult":Lcom/google/zxing/client/result/EmailAddressParsedResult;
    if-eqz v8, :cond_2

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual {v8}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getEmailAddress()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 274
    .end local v8    # "emailAddressParsedResult":Lcom/google/zxing/client/result/EmailAddressParsedResult;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$400(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$500(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$600(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const v24, 0x7f080033

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 277
    if-eqz v11, :cond_e

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode;->wifi:Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->ssid:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 279
    :cond_e
    if-eqz v22, :cond_2

    .line 280
    invoke-static/range {v22 .. v22}, Lcom/google/zxing/client/result/WifiResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v21

    check-cast v21, Lcom/google/zxing/client/result/WifiParsedResult;

    .line 281
    .local v21, "wifiParsedResult":Lcom/google/zxing/client/result/WifiParsedResult;
    if-eqz v21, :cond_2

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/client/result/WifiParsedResult;->getSsid()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 287
    .end local v21    # "wifiParsedResult":Lcom/google/zxing/client/result/WifiParsedResult;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$400(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$500(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$600(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const v24, 0x7f08002a

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 291
    if-eqz v11, :cond_11

    .line 292
    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode;->contactInfo:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    move-object/from16 v23, v0

    if-eqz v23, :cond_f

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode;->contactInfo:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->formattedName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_f

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode;->contactInfo:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->formattedName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_10

    .line 293
    :cond_f
    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode;->contactInfo:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->phones:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode;->contactInfo:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->phones:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_2

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode;->contactInfo:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->phones:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->number:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 297
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    iget-object v0, v11, Lcom/google/android/gms/vision/barcode/Barcode;->contactInfo:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->formattedName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 299
    :cond_11
    if-eqz v22, :cond_2

    .line 300
    invoke-static/range {v22 .. v22}, Lcom/google/zxing/client/result/VCardResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/client/result/AddressBookParsedResult;

    .line 301
    .local v4, "addressBookParsedResult":Lcom/google/zxing/client/result/AddressBookParsedResult;
    if-eqz v4, :cond_2

    .line 302
    invoke-virtual {v4}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_14

    invoke-virtual {v4}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-gtz v23, :cond_14

    .line 303
    invoke-virtual {v4}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_12

    const/16 v23, 0x1

    :goto_2
    invoke-virtual {v4}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    if-lez v24, :cond_13

    const/16 v24, 0x1

    :goto_3
    and-int v23, v23, v24

    if-eqz v23, :cond_2

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual {v4}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 303
    :cond_12
    const/16 v23, 0x0

    goto :goto_2

    :cond_13
    const/16 v24, 0x0

    goto :goto_3

    .line 307
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual {v4}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 315
    .end local v4    # "addressBookParsedResult":Lcom/google/zxing/client/result/AddressBookParsedResult;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$400(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$500(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$600(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const v24, 0x7f080029

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 319
    if-eqz v11, :cond_17

    .line 320
    iget-object v9, v11, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    .line 321
    .local v9, "event":Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;
    iget-object v7, v9, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->start:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    .line 322
    .local v7, "dateTime":Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;
    iget-object v0, v9, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->summary:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_15

    iget-object v0, v9, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->summary:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_16

    .line 323
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->year:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->month:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->day:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->hours:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->minutes:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 325
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v9, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->summary:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ": "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->year:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->month:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->day:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->hours:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->minutes:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 327
    .end local v7    # "dateTime":Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;
    .end local v9    # "event":Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;
    :cond_17
    if-eqz v22, :cond_2

    .line 328
    invoke-static/range {v22 .. v22}, Lcom/google/zxing/client/result/VEventResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/client/result/CalendarParsedResult;

    .line 329
    .local v6, "calendarParsedResult":Lcom/google/zxing/client/result/CalendarParsedResult;
    if-eqz v6, :cond_2

    .line 330
    invoke-virtual {v6}, Lcom/google/zxing/client/result/CalendarParsedResult;->getStart()Ljava/util/Date;

    move-result-object v7

    .line 331
    .local v7, "dateTime":Ljava/util/Date;
    invoke-virtual {v6}, Lcom/google/zxing/client/result/CalendarParsedResult;->getSummary()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_18

    invoke-virtual {v6}, Lcom/google/zxing/client/result/CalendarParsedResult;->getSummary()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_19

    .line 332
    :cond_18
    if-eqz v7, :cond_2

    .line 333
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v23, "yyyy.MM.dd,HH:ss"

    move-object/from16 v0, v23

    invoke-direct {v15, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 334
    .local v15, "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual {v15, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 338
    .end local v15    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_19
    if-eqz v7, :cond_2

    .line 340
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v23, "yyyy.MM.dd,HH:ss"

    move-object/from16 v0, v23

    invoke-direct {v15, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 341
    .restart local v15    # "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/google/zxing/client/result/CalendarParsedResult;->getSummary()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v15, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 350
    .end local v6    # "calendarParsedResult":Lcom/google/zxing/client/result/CalendarParsedResult;
    .end local v7    # "dateTime":Ljava/util/Date;
    .end local v15    # "sdf":Ljava/text/SimpleDateFormat;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$400(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$500(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$500(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const v24, 0x7f080023

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$600(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    const v24, 0x7f08002e

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 355
    if-eqz v11, :cond_1a

    .line 356
    iget-object v13, v11, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    .line 357
    .local v13, "license":Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v24, v0

    const v25, 0x7f080025

    invoke-static/range {v24 .. v25}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$800(Lcom/android/camera/ui/BarcodeRotateLayout;I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0xe

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v13, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->licenseNumber:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    iget-object v0, v13, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressCity:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    iget-object v0, v13, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressState:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x3

    iget-object v0, v13, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressStreet:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x4

    iget-object v0, v13, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressZip:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x5

    iget-object v0, v13, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->birthDate:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x6

    iget-object v0, v13, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->documentType:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x7

    iget-object v0, v13, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->expiryDate:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x8

    iget-object v0, v13, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->firstName:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x9

    iget-object v0, v13, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->middleName:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0xa

    iget-object v0, v13, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->lastName:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0xb

    iget-object v0, v13, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->gender:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0xc

    iget-object v0, v13, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->issueDate:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0xd

    iget-object v0, v13, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->issuingCountry:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 360
    .end local v13    # "license":Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;
    :cond_1a
    if-eqz v22, :cond_2

    .line 361
    invoke-static/range {v22 .. v22}, Lcom/google/zxing/client/result/VINResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v20

    check-cast v20, Lcom/google/zxing/client/result/VINParsedResult;

    .line 362
    .local v20, "vinParsedResult":Lcom/google/zxing/client/result/VINParsedResult;
    if-eqz v20, :cond_2

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v24, v0

    const v25, 0x7f080025

    invoke-static/range {v24 .. v25}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$800(Lcom/android/camera/ui/BarcodeRotateLayout;I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/client/result/VINParsedResult;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 372
    .end local v20    # "vinParsedResult":Lcom/google/zxing/client/result/VINParsedResult;
    :cond_1b
    if-eqz v22, :cond_2

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BarcodeRotateLayout$2;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
