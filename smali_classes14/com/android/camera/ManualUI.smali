.class public Lcom/android/camera/ManualUI;
.super Lcom/android/camera/ManualAbstractUI;
.source "ManualUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ManualUI$ManualOptionsClickHandler;,
        Lcom/android/camera/ManualUI$ManualOptionsScrollHanlder;,
        Lcom/android/camera/ManualUI$ZoomChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final UNSET:F


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private mAspectRatio:F

.field private mAwbLeftIndicator:Landroid/widget/ImageView;

.field private mAwbRightIndicator:Landroid/widget/ImageView;

.field private final mController:Lcom/android/camera/ManualController;

.field private final mCountdownView:Lcom/android/camera/ui/CountDownView;

.field private mEVItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mEvLeftIndicator:Landroid/widget/ImageView;

.field private mEvRightIndicator:Landroid/widget/ImageView;

.field private final mFaceView:Lcom/android/camera/ui/FaceView;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private mMFItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualAwbIcon:Landroid/widget/ImageView;

.field private mManualAwbLayout:Landroid/widget/LinearLayout;

.field private mManualAwbOptions:Landroid/widget/LinearLayout;

.field private mManualAwbScroll:Lcom/android/camera/ui/ManualModeHorizontalScrollView;

.field private mManualAwbTv:Landroid/widget/TextView;

.field mManualClickHandler:Landroid/view/View$OnClickListener;

.field private mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualEvIcon:Landroid/widget/ImageView;

.field private mManualEvLayout:Landroid/widget/LinearLayout;

.field private mManualEvOptions:Landroid/widget/LinearLayout;

.field private mManualEvScroll:Lcom/android/camera/ui/ManualModeHorizontalScrollView;

.field private mManualEvTv:Landroid/widget/TextView;

.field private mManualMeterCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualMeterIcon:Landroid/widget/ImageView;

.field private mManualMeterLayout:Landroid/widget/LinearLayout;

.field private mManualMeterOptions:Landroid/widget/LinearLayout;

.field private mManualMeterTv:Landroid/widget/TextView;

.field private mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualMfIcon:Landroid/widget/ImageView;

.field private mManualMfLayout:Landroid/widget/LinearLayout;

.field private mManualMfOptions:Landroid/widget/LinearLayout;

.field private mManualMfTv:Landroid/widget/TextView;

.field private mManualModeRootView:Landroid/widget/LinearLayout;

.field private mManualModeRotateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/RotateLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mManualOptionBackgroundColor:I

.field private mManualWTCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualWTIcon:Landroid/widget/ImageView;

.field private mManualWTLayout:Landroid/widget/LinearLayout;

.field private mManualWTOptions:Landroid/widget/LinearLayout;

.field private mManualWTTv:Landroid/widget/TextView;

.field private mMeteringItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mMfGap:Landroid/view/View;

.field private final mModuleRoot:Landroid/view/View;

.field private mOrientation:I

.field private final mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mPreviewHeight:I

.field private final mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private mPreviewWidth:I

.field private final mRootView:Landroid/view/View;

.field private mWBItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mWTItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomMax:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ManualUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ManualUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/ManualController;Landroid/view/View;I)V
    .locals 4
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/ManualController;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "orientation"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 228
    invoke-direct {p0}, Lcom/android/camera/ManualAbstractUI;-><init>()V

    .line 75
    iput v2, p0, Lcom/android/camera/ManualUI;->mPreviewWidth:I

    .line 76
    iput v2, p0, Lcom/android/camera/ManualUI;->mPreviewHeight:I

    .line 77
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ManualUI;->mAspectRatio:F

    .line 81
    iput v2, p0, Lcom/android/camera/ManualUI;->mManualOptionBackgroundColor:I

    .line 137
    new-instance v1, Lcom/android/camera/ManualUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualUI$1;-><init>(Lcom/android/camera/ManualUI;)V

    iput-object v1, p0, Lcom/android/camera/ManualUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 421
    new-instance v1, Lcom/android/camera/ManualUI$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualUI$2;-><init>(Lcom/android/camera/ManualUI;)V

    iput-object v1, p0, Lcom/android/camera/ManualUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    .line 229
    iput-object p1, p0, Lcom/android/camera/ManualUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 230
    iput-object p2, p0, Lcom/android/camera/ManualUI;->mController:Lcom/android/camera/ManualController;

    .line 231
    iput-object p3, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    .line 233
    iget-object v1, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 234
    .local v0, "moduleRoot":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/camera/ManualUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040052

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 235
    iput-object v0, p0, Lcom/android/camera/ManualUI;->mModuleRoot:Landroid/view/View;

    .line 236
    invoke-direct {p0}, Lcom/android/camera/ManualUI;->initIndicators()V

    .line 237
    iget-object v1, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/ManualUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 238
    iget-object v1, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/ManualUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 239
    iget-object v1, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/CountDownView;

    iput-object v1, p0, Lcom/android/camera/ManualUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    .line 241
    invoke-static {}, Lcom/android/camera/debug/DebugPropertyHelper;->showCaptureDebugUI()Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FaceView;

    iput-object v1, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 247
    invoke-direct {p0}, Lcom/android/camera/ManualUI;->initManualModeLayout()V

    .line 248
    iput p4, p0, Lcom/android/camera/ManualUI;->mOrientation:I

    .line 249
    invoke-virtual {p0, p4, v3}, Lcom/android/camera/ManualUI;->setOrientation(IZ)V

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ManualUI;)Lcom/android/camera/ManualController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualUI;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mController:Lcom/android/camera/ManualController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ManualUI;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualUI;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/camera/ManualUI;->expandOrFoldEvOption(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ManualUI;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualUI;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/camera/ManualUI;->expandOrFoldMfOption(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/ManualUI;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualUI;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/camera/ManualUI;->expandOrFoldAwbOption(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ManualUI;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualUI;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/camera/ManualUI;->expandOrFoldMeteringOption(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/ManualUI;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualUI;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/camera/ManualUI;->expandOrFoldWTOption(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/ManualUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualUI;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mModuleRoot:Landroid/view/View;

    return-object v0
.end method

.method private addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V
    .locals 3
    .param p1, "layout"    # Lcom/android/camera/ui/RotateLayout;

    .prologue
    const/4 v2, 0x1

    .line 337
    iget v0, p0, Lcom/android/camera/ManualUI;->mOrientation:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    .line 338
    const/16 v0, 0x10e

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualModeRotateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    return-void

    .line 339
    :cond_0
    iget v0, p0, Lcom/android/camera/ManualUI;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    .line 340
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0

    .line 342
    :cond_1
    iget v0, p0, Lcom/android/camera/ManualUI;->mOrientation:I

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0
.end method

.method private expandOrFoldAwbOption(Z)V
    .locals 4
    .param p1, "forceFold"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 372
    iget-object v3, p0, Lcom/android/camera/ManualUI;->mManualAwbOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 373
    .local v1, "visible":I
    :goto_0
    if-eqz p1, :cond_0

    const/16 v1, 0x8

    .line 374
    :cond_0
    if-nez v1, :cond_1

    iget v0, p0, Lcom/android/camera/ManualUI;->mManualOptionBackgroundColor:I

    .line 375
    .local v0, "backgroundColor":I
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ManualUI;->mManualAwbLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 376
    iget-object v3, p0, Lcom/android/camera/ManualUI;->mManualAwbOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 377
    iget-object v3, p0, Lcom/android/camera/ManualUI;->mAwbLeftIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    iget-object v3, p0, Lcom/android/camera/ManualUI;->mAwbRightIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    iget-object v3, p0, Lcom/android/camera/ManualUI;->mManualAwbScroll:Lcom/android/camera/ui/ManualModeHorizontalScrollView;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->setVisibility(I)V

    .line 380
    if-ne v1, v2, :cond_2

    .line 381
    iget-object v2, p0, Lcom/android/camera/ManualUI;->mAwbLeftIndicator:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    :cond_2
    return-void

    .end local v0    # "backgroundColor":I
    .end local v1    # "visible":I
    :cond_3
    move v1, v0

    .line 372
    goto :goto_0
.end method

.method private expandOrFoldEvOption(Z)V
    .locals 4
    .param p1, "forceFold"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 349
    iget-object v3, p0, Lcom/android/camera/ManualUI;->mManualEvOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 350
    .local v1, "visible":I
    :goto_0
    if-eqz p1, :cond_0

    const/16 v1, 0x8

    .line 351
    :cond_0
    if-nez v1, :cond_1

    iget v0, p0, Lcom/android/camera/ManualUI;->mManualOptionBackgroundColor:I

    .line 352
    .local v0, "backgroundColor":I
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ManualUI;->mManualEvLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 353
    iget-object v3, p0, Lcom/android/camera/ManualUI;->mManualEvOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    iget-object v3, p0, Lcom/android/camera/ManualUI;->mEvLeftIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    iget-object v3, p0, Lcom/android/camera/ManualUI;->mEvRightIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    iget-object v3, p0, Lcom/android/camera/ManualUI;->mManualEvScroll:Lcom/android/camera/ui/ManualModeHorizontalScrollView;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->setVisibility(I)V

    .line 357
    if-ne v1, v2, :cond_2

    .line 358
    iget-object v2, p0, Lcom/android/camera/ManualUI;->mEvLeftIndicator:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    :cond_2
    return-void

    .end local v0    # "backgroundColor":I
    .end local v1    # "visible":I
    :cond_3
    move v1, v0

    .line 349
    goto :goto_0
.end method

.method private expandOrFoldMeteringOption(Z)V
    .locals 3
    .param p1, "forceFold"    # Z

    .prologue
    const/4 v0, 0x0

    .line 386
    iget-object v2, p0, Lcom/android/camera/ManualUI;->mManualMeterOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const/16 v1, 0x8

    .line 387
    .local v1, "visible":I
    :goto_0
    if-eqz p1, :cond_0

    const/16 v1, 0x8

    .line 388
    :cond_0
    if-nez v1, :cond_1

    iget v0, p0, Lcom/android/camera/ManualUI;->mManualOptionBackgroundColor:I

    .line 389
    .local v0, "backgroundColor":I
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ManualUI;->mManualMeterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 390
    iget-object v2, p0, Lcom/android/camera/ManualUI;->mManualMeterOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 391
    return-void

    .end local v0    # "backgroundColor":I
    .end local v1    # "visible":I
    :cond_2
    move v1, v0

    .line 386
    goto :goto_0
.end method

.method private expandOrFoldMfOption(Z)V
    .locals 3
    .param p1, "forceFold"    # Z

    .prologue
    const/4 v0, 0x0

    .line 363
    iget-object v2, p0, Lcom/android/camera/ManualUI;->mManualMfOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const/16 v1, 0x8

    .line 364
    .local v1, "visible":I
    :goto_0
    if-eqz p1, :cond_0

    const/16 v1, 0x8

    .line 365
    :cond_0
    if-nez v1, :cond_1

    iget v0, p0, Lcom/android/camera/ManualUI;->mManualOptionBackgroundColor:I

    .line 366
    .local v0, "backgroundColor":I
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ManualUI;->mManualMfLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 367
    iget-object v2, p0, Lcom/android/camera/ManualUI;->mManualMfOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 369
    return-void

    .end local v0    # "backgroundColor":I
    .end local v1    # "visible":I
    :cond_2
    move v1, v0

    .line 363
    goto :goto_0
.end method

.method private expandOrFoldWTOption(Z)V
    .locals 3
    .param p1, "forceFold"    # Z

    .prologue
    const/4 v0, 0x0

    .line 394
    iget-object v2, p0, Lcom/android/camera/ManualUI;->mManualWTOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const/16 v1, 0x8

    .line 395
    .local v1, "visible":I
    :goto_0
    if-eqz p1, :cond_0

    const/16 v1, 0x8

    .line 396
    :cond_0
    if-nez v1, :cond_1

    iget v0, p0, Lcom/android/camera/ManualUI;->mManualOptionBackgroundColor:I

    .line 397
    .local v0, "backgroundColor":I
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ManualUI;->mManualWTLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 398
    iget-object v2, p0, Lcom/android/camera/ManualUI;->mManualWTOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 399
    return-void

    .end local v0    # "backgroundColor":I
    .end local v1    # "visible":I
    :cond_2
    move v1, v0

    .line 394
    goto :goto_0
.end method

.method private inflateMenuModeOptions(Ljava/util/ArrayList;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p2, "optionRootView"    # Landroid/widget/LinearLayout;
    .param p3, "rootView"    # Landroid/widget/LinearLayout;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "currentValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Landroid/widget/LinearLayout;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 689
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_4

    .line 690
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int v1, v9, v10

    .line 691
    .local v1, "diff":I
    if-lez v1, :cond_0

    .line 692
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v3, v9, :cond_1

    .line 693
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 692
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 695
    .end local v3    # "i":I
    :cond_0
    if-gez v1, :cond_1

    .line 696
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 697
    iget-object v9, p0, Lcom/android/camera/ManualUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 698
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f04004e

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 699
    .local v7, "layout":Landroid/view/View;
    invoke-virtual {p2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 700
    const v9, 0x7f0f0156

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v9}, Lcom/android/camera/ManualUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 696
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 703
    .end local v3    # "i":I
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .end local v7    # "layout":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 704
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 705
    .restart local v7    # "layout":Landroid/view/View;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 706
    const v9, 0x7f0f0157

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 707
    .local v2, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 708
    const v9, 0x7f020273

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 712
    :goto_3
    const v9, 0x7f0f0158

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 713
    .local v4, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    sget-object v10, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->NORMAL:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    invoke-virtual {v9, v10}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getIcon(Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 714
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 716
    const v9, 0x7f0f0159

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 717
    .local v8, "tv":Landroid/widget/TextView;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 720
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 721
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    new-instance v9, Lcom/android/camera/ManualUI$ManualOptionsClickHandler;

    move-object/from16 v0, p4

    invoke-direct {v9, p0, v0}, Lcom/android/camera/ManualUI$ManualOptionsClickHandler;-><init>(Lcom/android/camera/ManualUI;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 710
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 724
    .end local v2    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v7    # "layout":Landroid/view/View;
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 725
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 726
    const/4 v6, 0x1

    .line 732
    .end local v1    # "diff":I
    .end local v3    # "i":I
    .local v6, "isSuccess":Z
    :goto_4
    return v6

    .line 728
    .end local v6    # "isSuccess":Z
    :cond_4
    const/16 v9, 0x8

    invoke-virtual {p3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 729
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 730
    const/4 v6, 0x0

    .restart local v6    # "isSuccess":Z
    goto :goto_4
.end method

.method private initIndicators()V
    .locals 0

    .prologue
    .line 501
    return-void
.end method

.method private initManualModeAwbLayout()V
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0138

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualAwbLayout:Landroid/widget/LinearLayout;

    .line 294
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualAwbIcon:Landroid/widget/ImageView;

    .line 295
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualAwbTv:Landroid/widget/TextView;

    .line 296
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualAwbOptions:Landroid/widget/LinearLayout;

    .line 297
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    .line 298
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/ManualUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualAwbScroll:Lcom/android/camera/ui/ManualModeHorizontalScrollView;

    .line 300
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mAwbLeftIndicator:Landroid/widget/ImageView;

    .line 301
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mAwbLeftIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020276

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mAwbRightIndicator:Landroid/widget/ImageView;

    .line 303
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mAwbRightIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020275

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualAwbScroll:Lcom/android/camera/ui/ManualModeHorizontalScrollView;

    new-instance v1, Lcom/android/camera/ManualUI$ManualOptionsScrollHanlder;

    iget-object v2, p0, Lcom/android/camera/ManualUI;->mAwbLeftIndicator:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/camera/ManualUI;->mAwbRightIndicator:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/ManualUI$ManualOptionsScrollHanlder;-><init>(Lcom/android/camera/ManualUI;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->setOnEdgeReachedListener(Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;)V

    .line 305
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/ManualUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 306
    return-void
.end method

.method private initManualModeAwbOptions(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 7
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 585
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 586
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedWhiteBalance()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedWhiteBalance()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualAwbLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualAwbLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 597
    :cond_1
    :goto_0
    return-void

    .line 592
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_whitebalance_mode_key"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getManualItemListByKey(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mWBItemLists:Ljava/util/ArrayList;

    .line 593
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_whitebalance_mode_key"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getCurrentManualValueItemByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 594
    .local v5, "currentValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualUI;->mWBItemLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/ManualUI;->mManualAwbOptions:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/ManualUI;->mManualAwbLayout:Landroid/widget/LinearLayout;

    const-string v4, "pref_camera_whitebalance_mode_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 595
    .local v6, "success":Z
    if-eqz v6, :cond_1

    const-string v0, "pref_camera_whitebalance_mode_key"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/ManualUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initManualModeEvLayout()V
    .locals 4

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0149

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualEvLayout:Landroid/widget/LinearLayout;

    .line 310
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualEvIcon:Landroid/widget/ImageView;

    .line 311
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualEvIcon:Landroid/widget/ImageView;

    const v1, 0x7f020120

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualEvTv:Landroid/widget/TextView;

    .line 313
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f014f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualEvOptions:Landroid/widget/LinearLayout;

    .line 314
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f014a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    .line 315
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/ManualUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f014e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualEvScroll:Lcom/android/camera/ui/ManualModeHorizontalScrollView;

    .line 317
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f014d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mEvLeftIndicator:Landroid/widget/ImageView;

    .line 318
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mEvLeftIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020276

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0150

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mEvRightIndicator:Landroid/widget/ImageView;

    .line 320
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mEvRightIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020275

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualEvScroll:Lcom/android/camera/ui/ManualModeHorizontalScrollView;

    new-instance v1, Lcom/android/camera/ManualUI$ManualOptionsScrollHanlder;

    iget-object v2, p0, Lcom/android/camera/ManualUI;->mEvLeftIndicator:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/camera/ManualUI;->mEvRightIndicator:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/ManualUI$ManualOptionsScrollHanlder;-><init>(Lcom/android/camera/ManualUI;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->setOnEdgeReachedListener(Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;)V

    .line 322
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/ManualUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 323
    return-void
.end method

.method private initManualModeEvOptions(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 9
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    const/16 v1, 0x8

    .line 564
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualEvLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualEvLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 582
    :cond_1
    :goto_0
    return-void

    .line 570
    :cond_2
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v6

    .line 571
    .local v6, "max":I
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v7

    .line 572
    .local v7, "min":I
    if-nez v6, :cond_3

    if-nez v7, :cond_3

    .line 573
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualEvLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualEvLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_0

    .line 578
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_manual_exposure_key"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getManualItemListByKey(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mEVItemLists:Ljava/util/ArrayList;

    .line 579
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_manual_exposure_key"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getCurrentManualValueItemByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 580
    .local v5, "currentValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualUI;->mEVItemLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/ManualUI;->mManualEvOptions:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/ManualUI;->mManualEvLayout:Landroid/widget/LinearLayout;

    const-string v4, "pref_camera_manual_exposure_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 581
    .local v8, "success":Z
    if-eqz v8, :cond_1

    const-string v0, "pref_camera_manual_exposure_key"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/ManualUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initManualModeFocusLayout()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0151

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualMfLayout:Landroid/widget/LinearLayout;

    .line 273
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualMfIcon:Landroid/widget/ImageView;

    .line 274
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0154

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualMfTv:Landroid/widget/TextView;

    .line 275
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0155

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualMfOptions:Landroid/widget/LinearLayout;

    .line 276
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0152

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    .line 277
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/ManualUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mMfGap:Landroid/view/View;

    .line 279
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/ManualUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 280
    return-void
.end method

.method private initManualModeFocusOptions(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 7
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 531
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_MANUAL_FOCUS_MODE:Ljava/lang/String;

    sget-object v1, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_MANUAL_FOCUS_MODE:Ljava/lang/String;

    .line 533
    invoke-static {v1}, Lcom/android/camera/util/ProductConfigUtil;->getConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_FOCUS:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 534
    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualMfLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualMfLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 543
    :cond_1
    :goto_0
    return-void

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/camera/ManualDataUtil;->getFocusModes(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraCapabilities;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mMFItemLists:Ljava/util/ArrayList;

    .line 540
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_manual_focus_mode"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getCurrentManualValueItemByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 541
    .local v5, "currentValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualUI;->mMFItemLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/ManualUI;->mManualMfOptions:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/ManualUI;->mManualMfLayout:Landroid/widget/LinearLayout;

    const-string v4, "pref_camera_manual_focus_mode"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 542
    .local v6, "success":Z
    if-eqz v6, :cond_1

    const-string v0, "pref_camera_manual_focus_mode"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/ManualUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initManualModeLayout()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualModeRootView:Landroid/widget/LinearLayout;

    .line 261
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e0083

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ManualUI;->mManualOptionBackgroundColor:I

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualModeRotateList:Ljava/util/List;

    .line 263
    invoke-direct {p0}, Lcom/android/camera/ManualUI;->initManualModeFocusLayout()V

    .line 264
    invoke-direct {p0}, Lcom/android/camera/ManualUI;->initManualModeMeteringLayout()V

    .line 265
    invoke-direct {p0}, Lcom/android/camera/ManualUI;->initManualModeAwbLayout()V

    .line 266
    invoke-direct {p0}, Lcom/android/camera/ManualUI;->initManualModeEvLayout()V

    .line 267
    invoke-direct {p0}, Lcom/android/camera/ManualUI;->initManualModeWTLayout()V

    .line 269
    return-void
.end method

.method private initManualModeMeteringLayout()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualMeterLayout:Landroid/widget/LinearLayout;

    .line 284
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualMeterIcon:Landroid/widget/ImageView;

    .line 285
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f015d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualMeterTv:Landroid/widget/TextView;

    .line 286
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualMeterOptions:Landroid/widget/LinearLayout;

    .line 287
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualMeterCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    .line 288
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualMeterCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/ManualUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualMeterCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/ManualUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 290
    return-void
.end method

.method private initManualModeMeteringOptions(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 7
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 547
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_MANUAL_METERING_MODE:Ljava/lang/String;

    sget-object v1, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_MANUAL_METERING_MODE:Ljava/lang/String;

    .line 549
    invoke-static {v1}, Lcom/android/camera/util/ProductConfigUtil;->getConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 550
    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualMeterLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualMeterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 561
    :cond_1
    :goto_0
    return-void

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_metering_key"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getManualItemListByKey(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mMeteringItemLists:Ljava/util/ArrayList;

    .line 557
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_metering_key"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getCurrentManualValueItemByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 558
    .local v5, "currentValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualUI;->mMeteringItemLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/ManualUI;->mManualMeterOptions:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/ManualUI;->mManualMeterLayout:Landroid/widget/LinearLayout;

    const-string v4, "pref_camera_metering_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 559
    .local v6, "success":Z
    if-eqz v6, :cond_1

    const-string v0, "pref_camera_metering_key"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/ManualUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initManualModeWTLayout()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualWTLayout:Landroid/widget/LinearLayout;

    .line 327
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualWTIcon:Landroid/widget/ImageView;

    .line 328
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualWTTv:Landroid/widget/TextView;

    .line 329
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualWTOptions:Landroid/widget/LinearLayout;

    .line 330
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mManualWTCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    .line 331
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualWTCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/ManualUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualWTCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/ManualUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 333
    return-void
.end method

.method private initManualModeWTOptions()V
    .locals 7

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_wide_tele_key"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getManualItemListByKey(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualUI;->mWTItemLists:Ljava/util/ArrayList;

    .line 602
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_wide_tele_key"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getCurrentManualValueItemByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 603
    .local v5, "currentValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualUI;->mWTItemLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/ManualUI;->mManualWTOptions:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/ManualUI;->mManualWTLayout:Landroid/widget/LinearLayout;

    const-string v4, "pref_camera_wide_tele_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 604
    .local v6, "success":Z
    if-eqz v6, :cond_0

    const-string v0, "pref_camera_wide_tele_key"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/ManualUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_0
    return-void
.end method

.method private initializeManualModeOptions(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 0
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 523
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ManualUI;->initManualModeFocusOptions(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 524
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ManualUI;->initManualModeMeteringOptions(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 525
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ManualUI;->initManualModeAwbOptions(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 526
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ManualUI;->initManualModeEvOptions(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 527
    invoke-direct {p0}, Lcom/android/camera/ManualUI;->initManualModeWTOptions()V

    .line 528
    return-void
.end method


# virtual methods
.method public animateFlash()V
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mController:Lcom/android/camera/ManualController;

    invoke-interface {v0}, Lcom/android/camera/ManualController;->startPreCaptureAnimation()V

    .line 751
    return-void
.end method

.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 218
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 817
    :cond_0
    return-void
.end method

.method public foldAllOptions()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 403
    invoke-direct {p0, v0}, Lcom/android/camera/ManualUI;->expandOrFoldEvOption(Z)V

    .line 404
    invoke-direct {p0, v0}, Lcom/android/camera/ManualUI;->expandOrFoldMfOption(Z)V

    .line 405
    invoke-direct {p0, v0}, Lcom/android/camera/ManualUI;->expandOrFoldAwbOption(Z)V

    .line 406
    invoke-direct {p0, v0}, Lcom/android/camera/ManualUI;->expandOrFoldMeteringOption(Z)V

    .line 407
    invoke-direct {p0, v0}, Lcom/android/camera/ManualUI;->expandOrFoldWTOption(Z)V

    .line 408
    return-void
.end method

.method public getEditableMode()Z
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public getFaceView()Lcom/android/camera/ui/FaceView;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public initializeFirstTime()V
    .locals 0

    .prologue
    .line 513
    return-void
.end method

.method public initializeSecondTime(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 0
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 518
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ManualUI;->initializeZoom(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 519
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ManualUI;->initializeManualModeOptions(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 520
    return-void
.end method

.method public initializeZoom(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 5
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 737
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 738
    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ManualUI;->mZoomMax:F

    .line 745
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget v1, p0, Lcom/android/camera/ManualUI;->mZoomMax:F

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v2

    new-instance v3, Lcom/android/camera/ManualUI$ZoomChangeListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/camera/ManualUI$ZoomChangeListener;-><init>(Lcom/android/camera/ManualUI;Lcom/android/camera/ManualUI$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mController:Lcom/android/camera/ManualController;

    invoke-interface {v0}, Lcom/android/camera/ManualController;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    const/4 v0, 0x1

    .line 759
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraOpened(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 0
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 505
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ManualUI;->initializeZoom(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 506
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ManualUI;->initializeManualModeOptions(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 507
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 2
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-static {p1}, Lcom/android/camera/face/FaceDataCreator;->create([Landroid/hardware/Camera$Face;)[Lcom/android/camera/face/FaceData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/face/FaceData;)V

    .line 858
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 807
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ManualUI;->mAspectRatio:F

    .line 809
    invoke-virtual {p0}, Lcom/android/camera/ManualUI;->foldAllOptions()V

    .line 810
    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 226
    return-void
.end method

.method public onPreviewFlipped()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mController:Lcom/android/camera/ManualController;

    invoke-interface {v0}, Lcom/android/camera/ManualController;->updateCameraOrientation()V

    .line 184
    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 163
    sub-int v1, p4, p2

    .line 164
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 165
    .local v0, "height":I
    iget v2, p0, Lcom/android/camera/ManualUI;->mPreviewWidth:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/camera/ManualUI;->mPreviewHeight:I

    if-eq v2, v0, :cond_1

    .line 166
    :cond_0
    iput v1, p0, Lcom/android/camera/ManualUI;->mPreviewWidth:I

    .line 167
    iput v0, p0, Lcom/android/camera/ManualUI;->mPreviewHeight:I

    .line 169
    :cond_1
    return-void
.end method

.method public onStartFaceDetection(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 837
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 838
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 839
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 840
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 842
    :cond_0
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 848
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 849
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 851
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mController:Lcom/android/camera/ManualController;

    invoke-interface {v0}, Lcom/android/camera/ManualController;->onPreviewUIReady()V

    .line 482
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mController:Lcom/android/camera/ManualController;

    invoke-interface {v0}, Lcom/android/camera/ManualController;->onPreviewUIDestroyed()V

    .line 492
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 487
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 497
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 824
    :cond_0
    return-void
.end method

.method public resetPreviewOverlay()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->reset()V

    .line 257
    :cond_0
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 831
    :cond_0
    return-void
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 202
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 768
    :cond_0
    return-void
.end method

.method public setEditableMode(ZZ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "animateOnly"    # Z

    .prologue
    .line 413
    return-void
.end method

.method public setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 460
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 862
    iput p1, p0, Lcom/android/camera/ManualUI;->mOrientation:I

    .line 864
    iget-object v1, p0, Lcom/android/camera/ManualUI;->mManualModeRotateList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 865
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ManualUI;->mManualModeRotateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 866
    iget-object v1, p0, Lcom/android/camera/ManualUI;->mManualModeRotateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 865
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 870
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ManualUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ManualUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 871
    :cond_1
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 799
    return-void
.end method

.method public setViewVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualModeRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 943
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualEvLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualEvLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualAwbLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualAwbLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualMeterLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualMeterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 946
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualMfLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualMfLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 947
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualWTLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ManualUI;->mManualMfLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 948
    :cond_4
    return-void
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "zoomValue"    # F

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PreviewOverlay;->setZoom(F)V

    .line 954
    :cond_0
    return-void
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public startCountdown(I)V
    .locals 1
    .param p1, "sec"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->startCountDown(I)V

    .line 194
    return-void
.end method

.method public updateManualContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 611
    const/4 v4, 0x0

    .line 612
    .local v4, "text":Ljava/lang/String;
    const/4 v3, -0x1

    .line 613
    .local v3, "icon_not_exist":I
    const/4 v2, -0x1

    .line 616
    .local v2, "icon":I
    const-string v5, "pref_camera_whitebalance_mode_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 617
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mWBItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 618
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mWBItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v5}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 619
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mWBItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    .line 620
    .local v0, "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    sget-object v5, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->NORMAL:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    invoke-virtual {v0, v5}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getIcon(Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;)I

    move-result v2

    .line 621
    invoke-virtual {v0}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v4

    .line 625
    .end local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    :cond_0
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/camera/ManualUI;->mManualAwbTv:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    :cond_1
    if-eq v2, v6, :cond_2

    iget-object v5, p0, Lcom/android/camera/ManualUI;->mManualAwbIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 682
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 617
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 627
    .end local v1    # "i":I
    :cond_4
    const-string v5, "pref_camera_manual_exposure_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 628
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mEVItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 629
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mEVItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v5}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 630
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mEVItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    .line 631
    .restart local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    invoke-virtual {v0}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v4

    .line 635
    .end local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    :cond_5
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mManualEvTv:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 628
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 636
    .end local v1    # "i":I
    :cond_7
    const-string v5, "pref_camera_metering_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 637
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mMeteringItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 638
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mMeteringItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v5}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 639
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mMeteringItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    .line 640
    .restart local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    invoke-virtual {v0}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v4

    .line 641
    sget-object v5, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->NORMAL:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    invoke-virtual {v0, v5}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getIcon(Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;)I

    move-result v2

    .line 645
    .end local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    :cond_8
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mManualMeterTv:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    if-eq v2, v6, :cond_2

    .line 647
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mManualMeterIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 637
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 649
    .end local v1    # "i":I
    :cond_a
    const-string v5, "pref_camera_manual_focus_mode"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 653
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mMFItemLists:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 654
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mMFItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_b

    .line 655
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mMFItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v5}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 656
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mMFItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    .line 657
    .restart local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    invoke-virtual {v0}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v4

    .line 658
    sget-object v5, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->NORMAL:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    invoke-virtual {v0, v5}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getIcon(Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;)I

    move-result v2

    .line 662
    .end local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    :cond_b
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mManualMfTv:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    if-eq v2, v6, :cond_2

    .line 664
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mManualMfIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 654
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 667
    .end local v1    # "i":I
    :cond_d
    const-string v5, "pref_camera_wide_tele_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 668
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mWTItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_e

    .line 669
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mWTItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v5}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 670
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mWTItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    .line 671
    .restart local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    invoke-virtual {v0}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v4

    .line 672
    sget-object v5, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->NORMAL:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    invoke-virtual {v0, v5}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getIcon(Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;)I

    move-result v2

    .line 676
    .end local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    :cond_e
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mManualWTTv:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    if-eq v2, v6, :cond_2

    .line 678
    iget-object v5, p0, Lcom/android/camera/ManualUI;->mManualWTIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 668
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 3
    .param p1, "aspectRatio"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 464
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 465
    sget-object v0, Lcom/android/camera/ManualUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid aspect ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    .line 469
    div-float p1, v1, p1

    .line 472
    :cond_2
    iget v0, p0, Lcom/android/camera/ManualUI;->mAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 473
    iput p1, p0, Lcom/android/camera/ManualUI;->mAspectRatio:F

    .line 475
    iget-object v0, p0, Lcom/android/camera/ManualUI;->mController:Lcom/android/camera/ManualController;

    iget v1, p0, Lcom/android/camera/ManualUI;->mAspectRatio:F

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->updatePreviewAspectRatio(F)V

    goto :goto_0
.end method

.method public useModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method
