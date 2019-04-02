.class public Lcom/android/camera/PanoramaHal3ModuleUI;
.super Ljava/lang/Object;
.source "PanoramaHal3ModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field private static MARGIN_BOTTOM_IN_PX:I = 0x0

.field private static MARGIN_EXTRA:I = 0x0

.field private static MARGIN_HORIZONTAL_IN_PX:I = 0x0

.field private static final RESET_HINT_DELAY:I = 0xbb8

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private final mAppController:Lcom/android/camera/app/AppController;

.field private mConverter:Lcom/android/camera/face/Camera2FaceConverter;

.field private final mFaceView:Lcom/android/camera/ui/FaceView;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private final mHandler:Landroid/os/Handler;

.field private mHintText:Landroid/widget/TextView;

.field private mInitializeFirstTime:Z

.field private mMaxZoom:F

.field private final mModuleRoot:Landroid/view/View;

.field private mOrientation:I

.field private mPanoRecordStarted:Z

.field private mPanoramaPreview:Lcom/android/camera/ui/PanoramaPreview;

.field private mPreviewArea:Landroid/graphics/RectF;

.field private final mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private final mPreviewView:Landroid/view/TextureView;

.field private final mRootView:Landroid/view/View;

.field private mRotateHintLayout:Lcom/android/camera/ui/RotateLayout;

.field private final mSensorOrentation:I

.field private final mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PanoHal3ModuleUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/PanoramaHal3ModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 86
    sput v2, Lcom/android/camera/PanoramaHal3ModuleUI;->MARGIN_BOTTOM_IN_PX:I

    .line 87
    sput v2, Lcom/android/camera/PanoramaHal3ModuleUI;->MARGIN_HORIZONTAL_IN_PX:I

    .line 88
    sput v2, Lcom/android/camera/PanoramaHal3ModuleUI;->MARGIN_EXTRA:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;Landroid/view/View;I)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "appController"    # Lcom/android/camera/app/AppController;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "sensorOrentation"    # I

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mMaxZoom:F

    .line 72
    iput v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mZoomValue:F

    .line 76
    iput-boolean v2, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mInitializeFirstTime:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPanoRecordStarted:Z

    .line 91
    new-instance v1, Lcom/android/camera/PanoramaHal3ModuleUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaHal3ModuleUI$1;-><init>(Lcom/android/camera/PanoramaHal3ModuleUI;)V

    iput-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 110
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 111
    iput-object p2, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    .line 112
    iput-object p3, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mRootView:Landroid/view/View;

    .line 113
    iput p4, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mSensorOrentation:I

    .line 116
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/PanoramaHal3ModuleUI;->MARGIN_BOTTOM_IN_PX:I

    .line 117
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/PanoramaHal3ModuleUI;->MARGIN_HORIZONTAL_IN_PX:I

    .line 118
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/camera/PanoramaHal3ModuleUI;->MARGIN_EXTRA:I

    .line 121
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 122
    .local v0, "moduleRoot":Landroid/view/ViewGroup;
    iput-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mModuleRoot:Landroid/view/View;

    .line 124
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPreviewView:Landroid/view/TextureView;

    .line 126
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 128
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 130
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FaceView;

    iput-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 135
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mHandler:Landroid/os/Handler;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PanoramaHal3ModuleUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3ModuleUI;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3ModuleUI;->initializePanoControls()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/PanoramaHal3ModuleUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3ModuleUI;

    .prologue
    .line 51
    iget v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/PanoramaHal3ModuleUI;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3ModuleUI;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mRotateHintLayout:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/PanoramaHal3ModuleUI;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3ModuleUI;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/PanoramaHal3ModuleUI;)Lcom/android/camera/ui/PanoramaPreview;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3ModuleUI;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPanoramaPreview:Lcom/android/camera/ui/PanoramaPreview;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/PanoramaHal3ModuleUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3ModuleUI;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3ModuleUI;->updateHintPosition()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/PanoramaHal3ModuleUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3ModuleUI;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPanoRecordStarted:Z

    return v0
.end method

.method private initializePanoControls()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mModuleRoot:Landroid/view/View;

    const v1, 0x7f0f01ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mRotateHintLayout:Lcom/android/camera/ui/RotateLayout;

    .line 163
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mModuleRoot:Landroid/view/View;

    const v1, 0x7f0f01bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mHintText:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mModuleRoot:Landroid/view/View;

    const v1, 0x7f0f01b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PanoramaPreview;

    iput-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPanoramaPreview:Lcom/android/camera/ui/PanoramaPreview;

    .line 166
    return-void
.end method

.method private removeRules(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 397
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 398
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 399
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 400
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 401
    return-void
.end method

.method private updateHintPosition()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    const/16 v2, 0xe

    .line 357
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mHintText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 360
    .local v0, "viewParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 361
    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaHal3ModuleUI;->removeRules(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 362
    iget v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mOrientation:I

    sparse-switch v1, :sswitch_data_0

    .line 393
    :goto_0
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    .end local v0    # "viewParam":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 364
    .restart local v0    # "viewParam":Landroid/widget/RelativeLayout$LayoutParams;
    :sswitch_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 365
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 366
    sget v1, Lcom/android/camera/PanoramaHal3ModuleUI;->MARGIN_BOTTOM_IN_PX:I

    sget v2, Lcom/android/camera/PanoramaHal3ModuleUI;->MARGIN_EXTRA:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 367
    sget v1, Lcom/android/camera/PanoramaHal3ModuleUI;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 368
    sget v1, Lcom/android/camera/PanoramaHal3ModuleUI;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 371
    :sswitch_1
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 372
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 373
    sget v1, Lcom/android/camera/PanoramaHal3ModuleUI;->MARGIN_BOTTOM_IN_PX:I

    sget v2, Lcom/android/camera/PanoramaHal3ModuleUI;->MARGIN_EXTRA:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 374
    sget v1, Lcom/android/camera/PanoramaHal3ModuleUI;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 375
    sget v1, Lcom/android/camera/PanoramaHal3ModuleUI;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 378
    :sswitch_2
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 379
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 380
    sget v1, Lcom/android/camera/PanoramaHal3ModuleUI;->MARGIN_BOTTOM_IN_PX:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 381
    sget v1, Lcom/android/camera/PanoramaHal3ModuleUI;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 382
    sget v1, Lcom/android/camera/PanoramaHal3ModuleUI;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 385
    :sswitch_3
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 386
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 387
    sget v1, Lcom/android/camera/PanoramaHal3ModuleUI;->MARGIN_BOTTOM_IN_PX:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 388
    sget v1, Lcom/android/camera/PanoramaHal3ModuleUI;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 389
    sget v1, Lcom/android/camera/PanoramaHal3ModuleUI;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 362
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public cancelCountDown()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 299
    :cond_0
    return-void
.end method

.method public getBitMapFromPreview()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 264
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 265
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaHal3ModuleUI;->getPreviewTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    .line 266
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 267
    .local v0, "src":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getFaceView()Lcom/android/camera/ui/FaceView;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getPreviewAreaHeight()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewAreaWidth()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public initializeZoom(FF)V
    .locals 3
    .param p1, "maxZoom"    # F
    .param p2, "currentZoom"    # F

    .prologue
    .line 277
    iput p1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mMaxZoom:F

    .line 278
    iput p2, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mZoomValue:F

    .line 279
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/camera/face/Camera2FaceConverter;->setZoomValue(F)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mMaxZoom:F

    iget-object v2, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    .line 283
    return-void
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public loadModuleLayout()V
    .locals 4

    .prologue
    .line 139
    iget-boolean v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mInitializeFirstTime:Z

    if-eqz v1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 140
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mInitializeFirstTime:Z

    .line 141
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 142
    .local v0, "asyncLayoutInflater":Landroid/support/v4/view/AsyncLayoutInflater;
    const v2, 0x7f040072

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mModuleRoot:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/camera/PanoramaHal3ModuleUI$2;

    invoke-direct {v3, p0}, Lcom/android/camera/PanoramaHal3ModuleUI$2;-><init>(Lcom/android/camera/PanoramaHal3ModuleUI;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    goto :goto_0
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    .line 336
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPanoramaPreview:Lcom/android/camera/ui/PanoramaPreview;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPanoramaPreview:Lcom/android/camera/ui/PanoramaPreview;

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PanoramaPreview;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 343
    :cond_1
    return-void
.end method

.method public onStartFaceDetection(IZLcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z
    .param p3, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "pictureSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 316
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 318
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 319
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 320
    new-instance v0, Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mZoomValue:F

    invoke-direct {v0, p3, p2, v1, p4}, Lcom/android/camera/face/Camera2FaceConverter;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;ZFLcom/android/camera/util/Size;)V

    iput-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 322
    :cond_0
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 327
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 331
    :cond_0
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 311
    :cond_0
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 305
    :cond_0
    return-void
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 240
    return-void
.end method

.method public setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 293
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 347
    iput p1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mOrientation:I

    .line 349
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mRotateHintLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mRotateHintLayout:Lcom/android/camera/ui/RotateLayout;

    iget v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mOrientation:I

    invoke-virtual {v0, v1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 351
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3ModuleUI;->updateHintPosition()V

    .line 353
    :cond_0
    return-void
.end method

.method public setPictureTakingProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 261
    return-void
.end method

.method public showDebugMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 226
    return-void
.end method

.method public showHintMessage(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mHintText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 194
    :cond_0
    return-void
.end method

.method public showPanoRecordingUI(ZZ)V
    .locals 4
    .param p1, "recording"    # Z
    .param p2, "hasFail"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPanoRecordStarted:Z

    .line 170
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 172
    if-eqz p1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPanoramaPreview:Lcom/android/camera/ui/PanoramaPreview;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPanoramaPreview:Lcom/android/camera/ui/PanoramaPreview;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoramaPreview;->show()V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setShutterMovable(Z)V

    .line 177
    const v0, 0x7f0800b2

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaHal3ModuleUI;->showHintMessage(I)V

    .line 190
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPanoramaPreview:Lcom/android/camera/ui/PanoramaPreview;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPanoramaPreview:Lcom/android/camera/ui/PanoramaPreview;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoramaPreview;->hide()V

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setShutterMovable(Z)V

    .line 183
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/PanoramaHal3ModuleUI$3;

    invoke-direct {v3, p0}, Lcom/android/camera/PanoramaHal3ModuleUI$3;-><init>(Lcom/android/camera/PanoramaHal3ModuleUI;)V

    if-eqz p2, :cond_3

    const-wide/16 v0, 0xbb8

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public showPreviewFrame(Landroid/graphics/Bitmap;II[II[III)V
    .locals 10
    .param p1, "preview"    # Landroid/graphics/Bitmap;
    .param p2, "fullImgWidth"    # I
    .param p3, "fullImgHeight"    # I
    .param p4, "previewAttr"    # [I
    .param p5, "direction"    # I
    .param p6, "offset"    # [I
    .param p7, "progress"    # I
    .param p8, "totalPreviewLength"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPanoramaPreview:Lcom/android/camera/ui/PanoramaPreview;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mPanoramaPreview:Lcom/android/camera/ui/PanoramaPreview;

    iget v9, p0, Lcom/android/camera/PanoramaHal3ModuleUI;->mSensorOrentation:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/ui/PanoramaPreview;->updatePreviewFrame(Landroid/graphics/Bitmap;II[II[IIII)V

    .line 200
    :cond_0
    return-void
.end method

.method public startCountdown(I)V
    .locals 0
    .param p1, "sec"    # I

    .prologue
    .line 234
    return-void
.end method
