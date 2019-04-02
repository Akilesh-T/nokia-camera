.class Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;
.super Landroid/os/Handler;
.source "PreviewBarCodeRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RendererHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;


# direct methods
.method public constructor <init>(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    .line 262
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 263
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v10, 0x64

    const/16 v6, 0x9

    const/4 v9, 0x3

    const/4 v5, 0x0

    .line 268
    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v3}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$600(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/app/AppController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "pref_barcode_google_lib_exist_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/settings/SettingsManager;->getBarCodeGooglelibExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    .line 269
    invoke-static {v3}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$600(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/app/AppController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/livebroadcast/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 270
    invoke-static {}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    const-string v4, "no network!!"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 275
    :pswitch_0
    invoke-static {}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    const-string v4, "MSG_SCAN_BAR_CODE_BITMAP"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 276
    const/4 v2, 0x0

    .line 278
    .local v2, "preview":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v3}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$600(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/app/AppController;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/camera/app/AppController;->getBitMapFromPreview(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 285
    :goto_1
    if-eqz v2, :cond_2

    .line 286
    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    new-instance v4, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;

    iget-object v5, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v5}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$600(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/app/AppController;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;-><init>(Lcom/android/camera/app/AppController;Landroid/graphics/Bitmap;)V

    iput-object v4, v3, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->setBarcodeData:Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;

    .line 287
    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    iget-object v3, v3, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->setBarcodeData:Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;

    invoke-virtual {v3}, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->getData()Lcom/google/android/gms/vision/barcode/Barcode;

    move-result-object v1

    .line 288
    .local v1, "mBarCodeValus":Lcom/google/android/gms/vision/barcode/Barcode;
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v3}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$700(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/async/MainThread;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 289
    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v3}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$700(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/async/MainThread;

    move-result-object v3

    new-instance v4, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$1;

    invoke-direct {v4, p0, v1}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$1;-><init>(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;Lcom/google/android/gms/vision/barcode/Barcode;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 306
    .end local v1    # "mBarCodeValus":Lcom/google/android/gms/vision/barcode/Barcode;
    :cond_2
    invoke-virtual {p0, v9, v10, v11}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 281
    invoke-static {}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "barcode Exception e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "preview":Landroid/graphics/Bitmap;
    :pswitch_1
    invoke-static {}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    const-string v4, "MSG_SCAN_BAR_CODE_YUV"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 310
    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v3}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$400(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)[B

    move-result-object v3

    if-eqz v3, :cond_3

    .line 311
    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    new-instance v4, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;

    iget-object v5, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v5}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$600(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/app/AppController;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v6}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$400(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)[B

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v7}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$1000(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)I

    move-result v7

    iget-object v8, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v8}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$1100(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;-><init>(Lcom/android/camera/app/AppController;[BII)V

    iput-object v4, v3, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->setBarcodeData:Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;

    .line 312
    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    iget-object v3, v3, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->setBarcodeData:Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;

    invoke-virtual {v3}, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->getData()Lcom/google/android/gms/vision/barcode/Barcode;

    move-result-object v1

    .line 313
    .restart local v1    # "mBarCodeValus":Lcom/google/android/gms/vision/barcode/Barcode;
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v3}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$700(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/async/MainThread;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 314
    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v3}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$700(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/async/MainThread;

    move-result-object v3

    new-instance v4, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2;

    invoke-direct {v4, p0, v1}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2;-><init>(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;Lcom/google/android/gms/vision/barcode/Barcode;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 332
    .end local v1    # "mBarCodeValus":Lcom/google/android/gms/vision/barcode/Barcode;
    :cond_3
    invoke-virtual {p0, v9, v10, v11}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 335
    :pswitch_2
    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v3}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$800(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/barcode/BarCodeDialog;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v3}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$800(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/barcode/BarCodeDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/barcode/BarCodeDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v3}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$900(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)I

    move-result v3

    if-gt v3, v6, :cond_4

    .line 336
    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v3}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$908(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)I

    .line 337
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v9, v4, v5}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 338
    :cond_4
    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v3}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$800(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/barcode/BarCodeDialog;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v3}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$800(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/barcode/BarCodeDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/barcode/BarCodeDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v3}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$900(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)I

    move-result v3

    if-le v3, v6, :cond_5

    .line 339
    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v3, v5}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$902(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;I)I

    .line 340
    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-virtual {v3}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->stopBarcode()V

    goto/16 :goto_0

    .line 341
    :cond_5
    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v3}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$800(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/barcode/BarCodeDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v3}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$800(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/barcode/BarCodeDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/barcode/BarCodeDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 342
    iget-object v3, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v3, v5}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$902(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;I)I

    goto/16 :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
