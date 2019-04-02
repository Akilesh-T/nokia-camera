.class public Lcom/android/camera/PanoramaUIQC;
.super Lcom/android/camera/PanoramaUI;
.source "PanoramaUIQC.java"


# static fields
.field public static final PANO_CAPTURE_ORI_DOWN:I = 0x0

.field public static final PANO_CAPTURE_ORI_LEFT:I = 0x2

.field public static final PANO_CAPTURE_ORI_RIGHT:I = 0x3

.field public static final PANO_CAPTURE_ORI_UP:I = 0x1

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final ERROR_NONE:I

.field private final OFFSET_THRESHOLD:I

.field private final WARN_TRACE_QUICK:I

.field private final WARN_TRACE_SHAKE_BIF:I

.field private final WARN_TRACE_SHAKE_SMALL:I

.field private final WARN_TRACE_SLOPE:I

.field protected mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

.field private mCurrShowView:Landroid/widget/ImageView;

.field private mErrorCode:I

.field private mHintArrowDown:Landroid/widget/ImageView;

.field private mHintArrowLeft:Landroid/widget/ImageView;

.field private mHintArrowRight:Landroid/widget/ImageView;

.field private mHintArrowUp:Landroid/widget/ImageView;

.field private mHintMessage:Landroid/widget/TextView;

.field private mHintMessageContainer:Lcom/android/camera/ui/PanoHintMessageContainer;

.field private mIndicatorLeftLayout:Landroid/widget/LinearLayout;

.field private mIndicatorRightLayout:Landroid/widget/LinearLayout;

.field private mIsPanoProgress:Z

.field mLargeScreen:Z

.field private mMessageRunnable:Ljava/lang/Runnable;

.field private mNavigationBarHeight:I

.field private mPanoBackground:Landroid/widget/ImageView;

.field private mPanoBackgroundLine:Landroid/widget/ImageView;

.field private mPanoIndicatorDown:Landroid/widget/ImageView;

.field private mPanoIndicatorLeft:Landroid/widget/ImageView;

.field private mPanoIndicatorRight:Landroid/widget/ImageView;

.field private mPanoIndicatorUp:Landroid/widget/ImageView;

.field private mPanoStitchPreview:Landroid/widget/ImageView;

.field private mScreentHeight:I

.field private mTopMargin:I

.field moduleRoot:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PanoramaUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/PanoramaUIQC;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PanoramaController;Landroid/view/View;Lcom/android/camera/CaptureLayoutHelper;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/PanoramaController;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "helper"    # Lcom/android/camera/CaptureLayoutHelper;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/PanoramaUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PanoramaController;Landroid/view/View;)V

    .line 41
    iput v1, p0, Lcom/android/camera/PanoramaUIQC;->mNavigationBarHeight:I

    .line 43
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/camera/PanoramaUIQC;->OFFSET_THRESHOLD:I

    .line 44
    iput v1, p0, Lcom/android/camera/PanoramaUIQC;->ERROR_NONE:I

    .line 66
    iput v1, p0, Lcom/android/camera/PanoramaUIQC;->mErrorCode:I

    .line 67
    iput-boolean v1, p0, Lcom/android/camera/PanoramaUIQC;->mIsPanoProgress:Z

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PanoramaUIQC;->WARN_TRACE_SLOPE:I

    .line 70
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/camera/PanoramaUIQC;->WARN_TRACE_SHAKE_SMALL:I

    .line 71
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/camera/PanoramaUIQC;->WARN_TRACE_SHAKE_BIF:I

    .line 72
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/camera/PanoramaUIQC;->WARN_TRACE_QUICK:I

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 74
    iput-boolean v1, p0, Lcom/android/camera/PanoramaUIQC;->mLargeScreen:Z

    .line 560
    new-instance v0, Lcom/android/camera/PanoramaUIQC$2;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaUIQC$2;-><init>(Lcom/android/camera/PanoramaUIQC;)V

    iput-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mMessageRunnable:Ljava/lang/Runnable;

    .line 78
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->is18x9Layout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaUIQC;->mLargeScreen:Z

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/PanoramaUIQC;->initPanoramaUI()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PanoramaUIQC;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaUIQC;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/camera/PanoramaUIQC;->mIsPanoProgress:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/PanoramaUIQC;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaUIQC;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/PanoramaUIQC;->mErrorCode:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/PanoramaUIQC;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaUIQC;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/android/camera/PanoramaUIQC;->mErrorCode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/PanoramaUIQC;IZ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaUIQC;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/camera/PanoramaUIQC;->getErrorMessageId(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/PanoramaUIQC;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaUIQC;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaUIQC;->showMessage(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/PanoramaUIQC;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaUIQC;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mHintMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method private getErrorMessageId(IZ)I
    .locals 7
    .param p1, "error"    # I
    .param p2, "isFail"    # Z

    .prologue
    .line 517
    const v0, 0x7f080219

    .line 518
    .local v0, "error_msg_id":I
    packed-switch p1, :pswitch_data_0

    .line 540
    :goto_0
    const v6, 0x8000

    if-le p1, v6, :cond_0

    .line 541
    add-int/lit16 v5, p1, -0x8000

    .line 543
    .local v5, "warnCode":I
    and-int/lit8 v1, v5, 0x1

    .line 544
    .local v1, "ifWarn1":I
    and-int/lit8 v2, v5, 0x10

    .line 545
    .local v2, "ifWarn4":I
    and-int/lit8 v3, v5, 0x20

    .line 546
    .local v3, "ifWarn5":I
    and-int/lit16 v4, v5, 0x80

    .line 547
    .local v4, "ifWarn7":I
    if-lez v4, :cond_7

    .line 548
    const v0, 0x7f080297

    .line 557
    .end local v1    # "ifWarn1":I
    .end local v2    # "ifWarn4":I
    .end local v3    # "ifWarn5":I
    .end local v4    # "ifWarn7":I
    .end local v5    # "warnCode":I
    :cond_0
    :goto_1
    return v0

    .line 520
    :pswitch_0
    if-eqz p2, :cond_1

    const v0, 0x7f08001f

    .line 521
    :goto_2
    goto :goto_0

    .line 520
    :cond_1
    const v0, 0x7f08044b

    goto :goto_2

    .line 524
    :pswitch_1
    if-eqz p2, :cond_2

    const v0, 0x7f080021

    .line 525
    :goto_3
    goto :goto_0

    .line 524
    :cond_2
    const v0, 0x7f08044c

    goto :goto_3

    .line 527
    :pswitch_2
    if-eqz p2, :cond_3

    const v0, 0x7f08001d

    .line 528
    :goto_4
    goto :goto_0

    .line 527
    :cond_3
    const v0, 0x7f08044a

    goto :goto_4

    .line 530
    :pswitch_3
    if-eqz p2, :cond_4

    const v0, 0x7f080088

    .line 531
    :goto_5
    goto :goto_0

    .line 530
    :cond_4
    const v0, 0x7f08044d

    goto :goto_5

    .line 533
    :pswitch_4
    if-eqz p2, :cond_5

    const v0, 0x7f080089

    .line 534
    :goto_6
    goto :goto_0

    .line 533
    :cond_5
    const v0, 0x7f08044e

    goto :goto_6

    .line 536
    :pswitch_5
    if-eqz p2, :cond_6

    const v0, 0x7f080087

    :goto_7
    goto :goto_0

    :cond_6
    const v0, 0x7f080449

    goto :goto_7

    .line 549
    .restart local v1    # "ifWarn1":I
    .restart local v2    # "ifWarn4":I
    .restart local v3    # "ifWarn5":I
    .restart local v4    # "ifWarn7":I
    .restart local v5    # "warnCode":I
    :cond_7
    if-lez v3, :cond_8

    .line 550
    const v0, 0x7f080295

    goto :goto_1

    .line 551
    :cond_8
    if-lez v2, :cond_9

    .line 552
    const v0, 0x7f080296

    goto :goto_1

    .line 553
    :cond_9
    if-lez v1, :cond_0

    .line 554
    const v0, 0x7f080294

    goto :goto_1

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x7001
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method private getOffsetGravity(II)I
    .locals 6
    .param p1, "offset"    # I
    .param p2, "orientation"    # I

    .prologue
    const/16 v5, 0x50

    const/16 v4, -0x50

    .line 388
    sget-object v1, Lcom/android/camera/PanoramaUIQC;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOffsetGravity(), offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 389
    const/16 v0, 0x50

    .line 390
    .local v0, "gravity":I
    packed-switch p2, :pswitch_data_0

    .line 418
    :goto_0
    return v0

    .line 392
    :pswitch_0
    if-le p1, v5, :cond_0

    .line 393
    const/16 v0, 0x50

    .line 394
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorRight:Landroid/widget/ImageView;

    const/high16 v2, 0x43a50000    # 330.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    .line 396
    :cond_0
    if-ge p1, v4, :cond_1

    .line 397
    const/16 v0, 0x30

    .line 398
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorRight:Landroid/widget/ImageView;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    .line 400
    :cond_1
    const/16 v0, 0x10

    .line 401
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorRight:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    .line 405
    :pswitch_1
    if-le p1, v5, :cond_2

    .line 406
    const/16 v0, 0x50

    .line 407
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    const/high16 v2, 0x43520000    # 210.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    .line 408
    :cond_2
    if-ge p1, v4, :cond_3

    .line 410
    const/16 v0, 0x30

    .line 411
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    const/high16 v2, 0x43160000    # 150.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    .line 413
    :cond_3
    const/16 v0, 0x10

    .line 414
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setBackgroundVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mPanoBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mPanoBackgroundLine:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mPanoStitchPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    return-void
.end method

.method private showHintPage(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mHintArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mHintArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mHintArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mHintArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 477
    return-void
.end method

.method private showMessage(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mHintMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 573
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mHintMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 574
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mHintMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mHintMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mMessageRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 576
    return-void
.end method

.method private showPanoIndicatorByOri(II[I)V
    .locals 26
    .param p1, "currentStitchPos"    # I
    .param p2, "captureOri"    # I
    .param p3, "offset"    # [I

    .prologue
    .line 223
    const/4 v8, 0x0

    .line 224
    .local v8, "indicatoreAhead":I
    const/4 v5, 0x3

    .line 225
    .local v5, "backgroundLineW":I
    add-int v4, p1, v8

    .line 226
    .local v4, "arrowStartFrom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090223

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v19, v0

    .line 227
    .local v19, "shortSide":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090221

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 228
    .local v10, "lineMarginDp":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v22, v0

    mul-float v22, v22, v10

    move/from16 v0, v22

    float-to-int v11, v0

    .line 229
    .local v11, "lineMarginPx":I
    add-int v12, v4, v11

    .line 231
    .local v12, "lineStratFrom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPreviewBufferSize:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 232
    .local v20, "topOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PanoramaUIQC;->mScreentHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPreviewBufferSize:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PanoramaUIQC;->mNavigationBarHeight:I

    move/from16 v23, v0

    add-int v7, v22, v23

    .line 234
    .local v7, "bottomOffset":I
    packed-switch p2, :pswitch_data_0

    .line 385
    :goto_0
    return-void

    .line 236
    :pswitch_0
    if-lez p1, :cond_0

    .line 237
    add-int v21, v7, v4

    .line 238
    .local v21, "totalOffest":I
    const/16 v22, 0x1

    aget v17, p3, v22

    .line 239
    .local v17, "offsetY":I
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 241
    .local v13, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v22, 0x50

    move/from16 v0, v17

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    .line 242
    const/16 v22, 0x32

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorUp:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/high16 v23, 0x43700000    # 240.0f

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setRotation(F)V

    .line 251
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorUp:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-direct {v15, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 254
    .local v15, "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 255
    const/16 v22, 0xe

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 256
    const/16 v22, 0x0

    const/16 v23, 0x0

    add-int v24, v12, v7

    move/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoBackgroundLine:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    .end local v13    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v15    # "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v17    # "offsetY":I
    .end local v21    # "totalOffest":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorUp:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorUp:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorDown:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorDown:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorRight:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorRight:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorUp:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PanoramaUIQC;->mCurrShowView:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 244
    .restart local v13    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v17    # "offsetY":I
    .restart local v21    # "totalOffest":I
    :cond_5
    const/16 v22, -0x50

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 245
    const/16 v22, 0x0

    const/16 v23, 0x32

    move/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorUp:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/high16 v23, 0x43960000    # 300.0f

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setRotation(F)V

    goto/16 :goto_1

    .line 248
    :cond_6
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorUp:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/high16 v23, 0x43870000    # 270.0f

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setRotation(F)V

    goto/16 :goto_1

    .line 269
    .end local v13    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v17    # "offsetY":I
    .end local v21    # "totalOffest":I
    :pswitch_1
    if-lez p1, :cond_7

    .line 270
    add-int v21, v20, v4

    .line 271
    .restart local v21    # "totalOffest":I
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 273
    .restart local v13    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v22, 0x1

    aget v17, p3, v22

    .line 274
    .restart local v17    # "offsetY":I
    const/16 v22, 0x50

    move/from16 v0, v17

    move/from16 v1, v22

    if-le v0, v1, :cond_c

    .line 275
    const/16 v22, 0x32

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v13, v0, v1, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorDown:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/high16 v23, 0x42f00000    # 120.0f

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setRotation(F)V

    .line 284
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorDown:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PanoramaUIQC;->mScreentHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPreviewBufferSize:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PanoramaUIQC;->mNavigationBarHeight:I

    move/from16 v23, v0

    add-int v6, v22, v23

    .line 287
    .local v6, "bottomControlPadding":I
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-direct {v15, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 288
    .restart local v15    # "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 289
    const/16 v22, 0xe

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 290
    const/16 v22, 0x0

    add-int v23, v12, v20

    const/16 v24, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v15, v0, v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoBackgroundLine:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    .end local v6    # "bottomControlPadding":I
    .end local v13    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v15    # "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v17    # "offsetY":I
    .end local v21    # "totalOffest":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorUp:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorUp:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorDown:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorDown:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorRight:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorRight:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorDown:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PanoramaUIQC;->mCurrShowView:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 277
    .restart local v13    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v17    # "offsetY":I
    .restart local v21    # "totalOffest":I
    :cond_c
    const/16 v22, -0x50

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    .line 278
    const/16 v22, 0x0

    const/16 v23, 0x32

    move/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v13, v0, v1, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorDown:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/high16 v23, 0x42700000    # 60.0f

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setRotation(F)V

    goto/16 :goto_2

    .line 281
    :cond_d
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v13, v0, v1, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorDown:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/high16 v23, 0x42b40000    # 90.0f

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setRotation(F)V

    goto/16 :goto_2

    .line 303
    .end local v13    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v17    # "offsetY":I
    .end local v21    # "totalOffest":I
    :pswitch_2
    if-lez p1, :cond_f

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPreviewBufferSize:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v9, v0

    .line 307
    .local v9, "leftOffset":I
    const/16 v22, 0x0

    aget v16, p3, v22

    .line 309
    .local v16, "offsetX":I
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 312
    .restart local v13    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 313
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 314
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PanoramaUIQC;->getOffsetGravity(II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/PanoramaUIQC;->mLargeScreen:Z

    move/from16 v22, v0

    if-eqz v22, :cond_e

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mIndicatorLeftLayout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 319
    .local v14, "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0900d7

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mIndicatorLeftLayout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    .end local v14    # "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_e
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-direct {v15, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 328
    .restart local v15    # "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0x14

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 329
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PanoramaUIQC;->mTopMargin:I

    move/from16 v22, v0

    div-int/lit8 v23, v19, 0x2

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PanoramaUIQC;->mTopMargin:I

    move/from16 v23, v0

    div-int/lit8 v24, v19, 0x2

    add-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v9, v0, v12, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoBackgroundLine:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    .end local v9    # "leftOffset":I
    .end local v13    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v15    # "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "offsetX":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorUp:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorUp:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorDown:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorDown:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 338
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorRight:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorRight:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PanoramaUIQC;->mCurrShowView:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 347
    :pswitch_3
    if-lez p1, :cond_15

    .line 348
    const/16 v22, 0x0

    aget v16, p3, v22

    .line 350
    .restart local v16    # "offsetX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPreviewBufferSize:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v9, v0

    .line 351
    .restart local v9    # "leftOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPreviewBufferSize:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sub-int v22, v22, v23

    sub-int v18, v22, v9

    .line 353
    .local v18, "rightOffset":I
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 355
    .restart local v13    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 356
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 358
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PanoramaUIQC;->getOffsetGravity(II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorRight:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/PanoramaUIQC;->mLargeScreen:Z

    move/from16 v22, v0

    if-eqz v22, :cond_14

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mIndicatorRightLayout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 363
    .restart local v14    # "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0900d7

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mIndicatorRightLayout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    .end local v14    # "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_14
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-direct {v15, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 372
    .restart local v15    # "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0x14

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 373
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 374
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PanoramaUIQC;->mTopMargin:I

    move/from16 v22, v0

    div-int/lit8 v23, v19, 0x2

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PanoramaUIQC;->mTopMargin:I

    move/from16 v23, v0

    div-int/lit8 v24, v19, 0x2

    add-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v15, v12, v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoBackgroundLine:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    .end local v9    # "leftOffset":I
    .end local v13    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v15    # "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "offsetX":I
    .end local v18    # "rightOffset":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorUp:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorUp:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorDown:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorDown:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorRight:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorRight:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorRight:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PanoramaUIQC;->mCurrShowView:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public arrowBlink(Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 584
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 585
    .local v0, "alphaAnimation1":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 586
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 587
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 588
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 589
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->start()V

    .line 590
    return-void
.end method

.method public frameUpdate(Landroid/graphics/Bitmap;[II[II)V
    .locals 4
    .param p1, "preview"    # Landroid/graphics/Bitmap;
    .param p2, "imageAttrib"    # [I
    .param p3, "direction"    # I
    .param p4, "offset"    # [I
    .param p5, "maxResultLength"    # I

    .prologue
    .line 144
    const/4 v3, 0x0

    aget v1, p2, v3

    .line 145
    .local v1, "eachResultW":I
    const/4 v3, 0x1

    aget v0, p2, v3

    .line 146
    .local v0, "eachResultH":I
    const/4 v3, 0x3

    aget v2, p2, v3

    .line 147
    .local v2, "stride":I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p0, p1, p3, p5, p4}, Lcom/android/camera/PanoramaUIQC;->frameUpdate_QC(Landroid/graphics/Bitmap;II[I)V

    goto :goto_0
.end method

.method public frameUpdate_QC(Landroid/graphics/Bitmap;II[I)V
    .locals 20
    .param p1, "preview"    # Landroid/graphics/Bitmap;
    .param p2, "captureOri"    # I
    .param p3, "maxResultLength"    # I
    .param p4, "offset"    # [I

    .prologue
    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PanoramaUIQC;->mPanoStitchPreview:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    .line 155
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoramaUIQC;->showPanoPreviewByOri(I)V

    .line 156
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/PanoramaUIQC;->showShutterButton(Z)V

    .line 159
    :cond_0
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 160
    .local v8, "matrix":Landroid/graphics/Matrix;
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v8, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 161
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 163
    .local v11, "bitmapOrg":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 164
    .local v13, "coordinate":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090223

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v18, v0

    .line 165
    .local v18, "shortSide":I
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 167
    .local v16, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PanoramaUIQC;->mPreviewBufferSize:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v0, v3

    move/from16 v19, v0

    .line 168
    .local v19, "topOffset":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PanoramaUIQC;->mScreentHeight:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PanoramaUIQC;->mPreviewBufferSize:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/PanoramaUIQC;->mNavigationBarHeight:I

    add-int v12, v3, v4

    .line 169
    .local v12, "bottomOffset":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PanoramaUIQC;->mPreviewBufferSize:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v15, v3

    .line 170
    .local v15, "leftOffset":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PanoramaUIQC;->mPreviewBufferSize:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    sub-int v17, v3, v15

    .line 171
    .local v17, "rightOffset":I
    const/4 v10, 0x0

    .line 174
    .local v10, "LeftAddOffSet":I
    packed-switch p2, :pswitch_data_0

    .line 214
    :goto_0
    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v14, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 215
    .local v14, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PanoramaUIQC;->mPanoStitchPreview:Landroid/widget/ImageView;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PanoramaUIQC;->mPanoStitchPreview:Landroid/widget/ImageView;

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 218
    add-int v3, v13, v10

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v3, v1, v2}, Lcom/android/camera/PanoramaUIQC;->showPanoIndicatorByOri(II[I)V

    .line 219
    return-void

    .line 177
    .end local v14    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_0
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PanoramaUIQC;->mPreviewBufferSize:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    mul-int/2addr v3, v4

    div-int v13, v3, p3

    .line 179
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v16    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v0, v13, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 180
    .restart local v16    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xa

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 181
    const/16 v3, 0x9

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 182
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PanoramaUIQC;->mTopMargin:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/PanoramaUIQC;->mTopMargin:I

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v15, v3, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 183
    move v10, v15

    .line 184
    goto :goto_0

    .line 188
    :pswitch_1
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PanoramaUIQC;->mPreviewBufferSize:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    mul-int/2addr v3, v4

    div-int v13, v3, p3

    .line 190
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v16    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v0, v13, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 191
    .restart local v16    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xa

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 192
    const/16 v3, 0xb

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 193
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PanoramaUIQC;->mTopMargin:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/PanoramaUIQC;->mTopMargin:I

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v15, v3, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 194
    move v10, v15

    .line 195
    goto/16 :goto_0

    .line 198
    :pswitch_2
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PanoramaUIQC;->mPreviewBufferSize:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    mul-int/2addr v3, v4

    div-int v13, v3, p3

    .line 199
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v16    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v0, v1, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 200
    .restart local v16    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xe

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 201
    const/16 v3, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 202
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1, v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 206
    :pswitch_3
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PanoramaUIQC;->mPreviewBufferSize:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    mul-int/2addr v3, v4

    div-int v13, v3, p3

    .line 207
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v16    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v0, v1, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 208
    .restart local v16    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xe

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 209
    const/16 v3, 0xa

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 210
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1, v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 679
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideUIWhenPanoStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 481
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/camera/PanoramaUIQC;->mScreentHeight:I

    .line 483
    invoke-direct {p0, v2}, Lcom/android/camera/PanoramaUIQC;->showHintPage(I)V

    .line 484
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mHintMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const v1, 0x7f0202ae

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/app/CameraAppUI;->animateBottomBarToPanoStop(IZ)V

    .line 487
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaUIQC;->mIsPanoProgress:Z

    .line 489
    return-void
.end method

.method public initPanoramaUI()V
    .locals 9

    .prologue
    const v8, 0x7f0202aa

    .line 85
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mRootView:Landroid/view/View;

    const v5, 0x7f0f00c9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIQC;->moduleRoot:Landroid/view/ViewGroup;

    .line 86
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040074

    iget-object v6, p0, Lcom/android/camera/PanoramaUIQC;->moduleRoot:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, "panoView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->moduleRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mRootView:Landroid/view/View;

    const v5, 0x7f0f00c5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 92
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/PanoramaUIQC;->mNavigationBarHeight:I

    .line 93
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mRootView:Landroid/view/View;

    const v5, 0x7f0f01c7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorUp:Landroid/widget/ImageView;

    .line 94
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorUp:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorUp:Landroid/widget/ImageView;

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setRotation(F)V

    .line 96
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mRootView:Landroid/view/View;

    const v5, 0x7f0f01c3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorRight:Landroid/widget/ImageView;

    .line 97
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorRight:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorRight:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setRotation(F)V

    .line 99
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mRootView:Landroid/view/View;

    const v5, 0x7f0f01c6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorDown:Landroid/widget/ImageView;

    .line 100
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorDown:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorDown:Landroid/widget/ImageView;

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setRotation(F)V

    .line 102
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mRootView:Landroid/view/View;

    const v5, 0x7f0f01c5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    .line 103
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setRotation(F)V

    .line 105
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mRootView:Landroid/view/View;

    const v5, 0x7f0f01c4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mIndicatorLeftLayout:Landroid/widget/LinearLayout;

    .line 106
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mRootView:Landroid/view/View;

    const v5, 0x7f0f01c2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mIndicatorRightLayout:Landroid/widget/LinearLayout;

    .line 107
    const v4, 0x7f0f01ca

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mHintArrowUp:Landroid/widget/ImageView;

    .line 108
    iget-boolean v4, p0, Lcom/android/camera/PanoramaUIQC;->mLargeScreen:Z

    if-eqz v4, :cond_0

    .line 109
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mHintArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900cc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 111
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mHintArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const v4, 0x7f0f01cb

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mHintArrowDown:Landroid/widget/ImageView;

    .line 114
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mHintArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 115
    .restart local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900d0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, p0, Lcom/android/camera/PanoramaUIQC;->mNavigationBarHeight:I

    sub-int v1, v4, v5

    .line 117
    .local v1, "marginSize":I
    iget-boolean v4, p0, Lcom/android/camera/PanoramaUIQC;->mLargeScreen:Z

    if-nez v4, :cond_2

    .line 118
    iget v4, p0, Lcom/android/camera/PanoramaUIQC;->mNavigationBarHeight:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 122
    :goto_0
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mHintArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    const v4, 0x7f0f01cc

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mHintArrowRight:Landroid/widget/ImageView;

    .line 124
    const v4, 0x7f0f01cd

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mHintArrowLeft:Landroid/widget/ImageView;

    .line 125
    const v4, 0x7f0f01bb

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mHintMessage:Landroid/widget/TextView;

    .line 126
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 127
    .local v0, "height":I
    sub-int v4, v0, v1

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/camera/PanoramaUIQC;->mNavigationBarHeight:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/camera/PanoramaUIQC;->mTopMargin:I

    .line 128
    const v4, 0x7f0f01ce

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/PanoHintMessageContainer;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mHintMessageContainer:Lcom/android/camera/ui/PanoHintMessageContainer;

    .line 129
    iget-boolean v4, p0, Lcom/android/camera/PanoramaUIQC;->mLargeScreen:Z

    if-eqz v4, :cond_1

    .line 130
    iget-object v4, p0, Lcom/android/camera/PanoramaUIQC;->mHintMessageContainer:Lcom/android/camera/ui/PanoHintMessageContainer;

    iget v5, p0, Lcom/android/camera/PanoramaUIQC;->mNavigationBarHeight:I

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/PanoHintMessageContainer;->setExtraMargin(I)V

    .line 132
    :cond_1
    return-void

    .line 120
    .end local v0    # "height":I
    :cond_2
    iget v4, p0, Lcom/android/camera/PanoramaUIQC;->mNavigationBarHeight:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaUIQC;->mAspectRatio:F

    .line 138
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->moduleRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 139
    invoke-virtual {p0}, Lcom/android/camera/PanoramaUIQC;->releasePanoView()V

    .line 140
    return-void
.end method

.method public pregressControl(Z)V
    .locals 0
    .param p1, "tShow"    # Z

    .prologue
    .line 675
    return-void
.end method

.method public releasePanoView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 600
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorUp:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorUp:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorDown:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 604
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorDown:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 607
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 609
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorRight:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 610
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoIndicatorRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 613
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoStitchPreview:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 614
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoStitchPreview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_4

    .line 615
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoStitchPreview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 616
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 617
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 620
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoStitchPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 621
    invoke-direct {p0, v3}, Lcom/android/camera/PanoramaUIQC;->setBackgroundVisibility(I)V

    .line 622
    iput-object v2, p0, Lcom/android/camera/PanoramaUIQC;->mPanoStitchPreview:Landroid/widget/ImageView;

    .line 625
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoBackground:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    .line 626
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoBackground:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_6

    .line 627
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoBackground:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 628
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_6

    .line 629
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 632
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_6
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 633
    iput-object v2, p0, Lcom/android/camera/PanoramaUIQC;->mPanoBackground:Landroid/widget/ImageView;

    .line 636
    :cond_7
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoBackgroundLine:Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    .line 637
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoBackgroundLine:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_8

    .line 638
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoBackgroundLine:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 639
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_8

    .line 640
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 643
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_8
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mPanoBackgroundLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 644
    iput-object v2, p0, Lcom/android/camera/PanoramaUIQC;->mPanoBackgroundLine:Landroid/widget/ImageView;

    .line 646
    :cond_9
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/PanoramaUIQC;->mErrorCode:I

    .line 647
    return-void
.end method

.method public setErrorCode(IZ)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "isFail"    # Z

    .prologue
    .line 494
    iget-boolean v1, p0, Lcom/android/camera/PanoramaUIQC;->mIsPanoProgress:Z

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 495
    :cond_0
    iget v1, p0, Lcom/android/camera/PanoramaUIQC;->mErrorCode:I

    if-eqz v1, :cond_1

    if-eqz p2, :cond_2

    .line 496
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/PanoramaUIQC;->getErrorMessageId(IZ)I

    move-result v0

    .line 497
    .local v0, "msgId":I
    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaUIQC;->showMessage(I)V

    .line 499
    .end local v0    # "msgId":I
    :cond_2
    iput p1, p0, Lcom/android/camera/PanoramaUIQC;->mErrorCode:I

    .line 501
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mCurrShowView:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 502
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mCurrShowView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 503
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mCurrShowView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/camera/PanoramaUIQC;->arrowBlink(Landroid/widget/ImageView;)V

    .line 507
    :cond_3
    if-gez p1, :cond_4

    .line 508
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC;->mHintMessage:Landroid/widget/TextView;

    new-instance v2, Lcom/android/camera/PanoramaUIQC$1;

    invoke-direct {v2, p0}, Lcom/android/camera/PanoramaUIQC$1;-><init>(Lcom/android/camera/PanoramaUIQC;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 514
    :cond_4
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mHintMessageContainer:Lcom/android/camera/ui/PanoHintMessageContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mHintMessageContainer:Lcom/android/camera/ui/PanoHintMessageContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/PanoHintMessageContainer;->setOrientation(IZ)V

    .line 595
    :cond_0
    return-void
.end method

.method public showButtonWhenPanoStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 651
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const v1, 0x7f020160

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->animateBottomBarToFullSize(I)V

    .line 652
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 653
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 654
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->changePanoModeOptions(Z)V

    .line 656
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 657
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraActivity;->setSwitchButtonEnabled(Z)V

    .line 658
    return-void
.end method

.method public showFailMessage(II)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "mDeviceOrientation"    # I

    .prologue
    .line 581
    return-void
.end method

.method public showPanoPreviewByOri(I)V
    .locals 11
    .param p1, "captureOri"    # I

    .prologue
    const v10, 0x7f090223

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 423
    const/4 v6, 0x2

    if-eq p1, v6, :cond_0

    const/4 v6, 0x3

    if-ne p1, v6, :cond_2

    .line 424
    :cond_0
    iget-object v6, p0, Lcom/android/camera/PanoramaUIQC;->mRootView:Landroid/view/View;

    const v7, 0x7f0f01c0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/PanoramaUIQC;->mPanoStitchPreview:Landroid/widget/ImageView;

    .line 425
    iget-object v6, p0, Lcom/android/camera/PanoramaUIQC;->mRootView:Landroid/view/View;

    const v7, 0x7f0f01bc

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/PanoramaUIQC;->mPanoBackground:Landroid/widget/ImageView;

    .line 426
    iget-object v6, p0, Lcom/android/camera/PanoramaUIQC;->mRootView:Landroid/view/View;

    const v7, 0x7f0f01bd

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/PanoramaUIQC;->mPanoBackgroundLine:Landroid/widget/ImageView;

    .line 428
    iget-object v6, p0, Lcom/android/camera/PanoramaUIQC;->mPreviewBufferSize:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v1, v6

    .line 429
    .local v1, "leftOffset":I
    iget-object v6, p0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/android/camera/PanoramaUIQC;->mPreviewBufferSize:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v6, v7

    sub-int v2, v6, v1

    .line 430
    .local v2, "rightOffset":I
    iget-object v6, p0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 431
    .local v3, "shortSide":I
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 432
    .local v4, "tLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 433
    iget v6, p0, Lcom/android/camera/PanoramaUIQC;->mTopMargin:I

    iget v7, p0, Lcom/android/camera/PanoramaUIQC;->mTopMargin:I

    invoke-virtual {v4, v1, v6, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 434
    if-eqz v4, :cond_1

    .line 435
    iget-object v6, p0, Lcom/android/camera/PanoramaUIQC;->mPanoBackground:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    .end local v1    # "leftOffset":I
    .end local v2    # "rightOffset":I
    :cond_1
    :goto_0
    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/android/camera/PanoramaUIQC;->showHintPage(I)V

    .line 460
    iget-object v6, p0, Lcom/android/camera/PanoramaUIQC;->mHintMessage:Landroid/widget/TextView;

    const v7, 0x7f0800b3

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 461
    iget-object v6, p0, Lcom/android/camera/PanoramaUIQC;->mHintMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    invoke-direct {p0, v8}, Lcom/android/camera/PanoramaUIQC;->setBackgroundVisibility(I)V

    .line 463
    return-void

    .line 439
    .end local v3    # "shortSide":I
    .end local v4    # "tLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v6, p0, Lcom/android/camera/PanoramaUIQC;->mRootView:Landroid/view/View;

    const v7, 0x7f0f01c1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/PanoramaUIQC;->mPanoStitchPreview:Landroid/widget/ImageView;

    .line 440
    iget-object v6, p0, Lcom/android/camera/PanoramaUIQC;->mRootView:Landroid/view/View;

    const v7, 0x7f0f01be

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/PanoramaUIQC;->mPanoBackground:Landroid/widget/ImageView;

    .line 442
    iget-object v6, p0, Lcom/android/camera/PanoramaUIQC;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 443
    .restart local v3    # "shortSide":I
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 445
    .restart local v4    # "tLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/camera/PanoramaUIQC;->mPreviewBufferSize:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v5, v6

    .line 446
    .local v5, "topOffset":I
    iget v6, p0, Lcom/android/camera/PanoramaUIQC;->mScreentHeight:I

    iget-object v7, p0, Lcom/android/camera/PanoramaUIQC;->mPreviewBufferSize:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/PanoramaUIQC;->mNavigationBarHeight:I

    add-int v0, v6, v7

    .line 448
    .local v0, "bottomOffset":I
    const/16 v6, 0xe

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 449
    invoke-virtual {v4, v8, v5, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 450
    if-eqz v4, :cond_3

    .line 451
    iget-object v6, p0, Lcom/android/camera/PanoramaUIQC;->mPanoBackground:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    :cond_3
    iget-object v6, p0, Lcom/android/camera/PanoramaUIQC;->mRootView:Landroid/view/View;

    const v7, 0x7f0f01bf

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/PanoramaUIQC;->mPanoBackgroundLine:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public showUIWhenPanoStop()V
    .locals 4

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/android/camera/PanoramaUIQC;->showButtonWhenPanoStop()V

    .line 663
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaUIQC;->showHintPage(I)V

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaUIQC;->mIsPanoProgress:Z

    .line 665
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC;->mHintMessage:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/PanoramaUIQC$3;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaUIQC$3;-><init>(Lcom/android/camera/PanoramaUIQC;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 670
    return-void
.end method

.method public useModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 684
    const/4 v0, 0x0

    return v0
.end method
