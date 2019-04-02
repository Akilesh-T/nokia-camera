.class public Lcom/android/camera/ManualHal3ProModuleUI;
.super Lcom/android/camera/ManualAbstractHal3UI;
.source "ManualHal3ProModuleUI.java"


# static fields
.field private static final HIDE_TEXT_TIMEOUT:J = 0x7d0L

.field private static final MSG_HIDE_TEXT_HINT:I

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private mConverter:Lcom/android/camera/face/Camera2FaceConverter;

.field private mCountdownView:Lcom/android/camera/ui/CountDownView;

.field private mDisableColor:I

.field private mETItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mFaceView:Lcom/android/camera/ui/FaceView;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private mHandler:Landroid/os/Handler;

.field private mISOItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mInitializeFirstTime:Z

.field private mIsEditSingleRing:Z

.field private mIsEditableMode:Z

.field private mIsLayoutInflated:Z

.field private final mListener:Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;

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

.field private mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

.field private mManualAwbTv:Landroid/widget/TextView;

.field private mManualClickHandler:Landroid/view/View$OnClickListener;

.field private mManualEnabled:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/camera/ui/ProModeSeekBar;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mManualEtCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualEtIcon:Landroid/widget/ImageView;

.field private mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

.field private mManualEtTv:Landroid/widget/TextView;

.field private mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualEvIcon:Landroid/widget/ImageView;

.field private mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

.field private mManualEvTv:Landroid/widget/TextView;

.field private mManualIsoCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualIsoIcon:Landroid/widget/ImageView;

.field private mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

.field private mManualIsoTv:Landroid/widget/TextView;

.field private mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualMfIcon:Landroid/widget/ImageView;

.field private mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

.field private mManualMfTv:Landroid/widget/TextView;

.field private mManualModeControlBar:Landroid/widget/FrameLayout;

.field private mManualProHint:Landroid/widget/TextView;

.field private mManualProHintRotateLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualProModeFrame:Landroid/widget/FrameLayout;

.field private mManualProModeRootView:Landroid/widget/FrameLayout;

.field private mManualProModeRotateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/RotateLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mManualProModeSeekBarList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/ProModeSeekBar;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxZoom:F

.field private final mModuleRoot:Landroid/view/View;

.field private mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

.field private mOrientation:I

.field private mPause:Z

.field private mPreviewArea:Landroid/graphics/RectF;

.field private final mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private final mPreviewView:Landroid/view/TextureView;

.field private mProClipPaddingSize:I

.field private final mRootView:Landroid/view/View;

.field private final mSettingsManager:Lcom/android/camera/settings/SettingsManager;

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

.field private final mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ManualHal3ProModuleUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ManualHal3ProModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Landroid/view/View;Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;Z)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;
    .param p4, "isEditableMode"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 211
    invoke-direct {p0}, Lcom/android/camera/ManualAbstractHal3UI;-><init>()V

    .line 82
    iput v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mMaxZoom:F

    .line 83
    iput v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mZoomValue:F

    .line 87
    iput-boolean v2, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mInitializeFirstTime:Z

    .line 88
    iput-boolean v2, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mIsLayoutInflated:Z

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEnabled:Ljava/util/HashMap;

    .line 98
    iput-boolean v2, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mIsEditableMode:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mIsEditSingleRing:Z

    .line 151
    new-instance v1, Lcom/android/camera/ManualHal3ProModuleUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualHal3ProModuleUI$1;-><init>(Lcom/android/camera/ManualHal3ProModuleUI;)V

    iput-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mHandler:Landroid/os/Handler;

    .line 181
    new-instance v1, Lcom/android/camera/ManualHal3ProModuleUI$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualHal3ProModuleUI$2;-><init>(Lcom/android/camera/ManualHal3ProModuleUI;)V

    iput-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 539
    new-instance v1, Lcom/android/camera/ManualHal3ProModuleUI$5;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualHal3ProModuleUI$5;-><init>(Lcom/android/camera/ManualHal3ProModuleUI;)V

    iput-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    .line 212
    iput-object p1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 213
    invoke-virtual {p1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 214
    iput-object p3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mListener:Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;

    .line 215
    iput-object p2, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    .line 217
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 218
    .local v0, "moduleRoot":Landroid/view/ViewGroup;
    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mModuleRoot:Landroid/view/View;

    .line 220
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mPreviewView:Landroid/view/TextureView;

    .line 222
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 224
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 226
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FaceView;

    iput-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 230
    iput-boolean p4, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mIsEditableMode:Z

    .line 231
    const v1, 0x7f0e0062

    invoke-virtual {p1, v1}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mDisableColor:I

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProHint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/ManualHal3ProModuleUI;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;
    .param p1, "x1"    # F

    .prologue
    .line 64
    iput p1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mZoomValue:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/ManualHal3ProModuleUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/ManualHal3ProModuleUI;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeRotateList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/ManualHal3ProModuleUI;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeSeekBarList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/ManualHal3ProModuleUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mIsLayoutInflated:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ui/ProModeSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ui/ProModeSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mListener:Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ui/ProModeSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ui/ProModeSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ui/ProModeSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/ManualHal3ProModuleUI;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/camera/ManualHal3ProModuleUI;->showHintText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/ManualHal3ProModuleUI;Lcom/android/camera/ui/ProModeSeekBar;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;
    .param p1, "x1"    # Lcom/android/camera/ui/ProModeSeekBar;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ManualHal3ProModuleUI;->expandOrFoldOption(Lcom/android/camera/ui/ProModeSeekBar;ZZ)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/face/Camera2FaceConverter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/settings/SettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/ManualHal3ProModuleUI;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEnabled:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mModuleRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ManualHal3ProModuleUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mPause:Z

    return v0
.end method

.method static synthetic access$600()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/camera/ManualHal3ProModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/ManualHal3ProModuleUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/camera/ManualHal3ProModuleUI;->initManualModeLayout()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/ManualHal3ProModuleUI;Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;
    .param p1, "x1"    # Lcom/android/camera/one/OneCameraCharacteristics;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/camera/ManualHal3ProModuleUI;->initializeManualModeOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ui/CountDownView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/camera/ManualHal3ProModuleUI;Lcom/android/camera/ui/CountDownView;)Lcom/android/camera/ui/CountDownView;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ProModuleUI;
    .param p1, "x1"    # Lcom/android/camera/ui/CountDownView;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object p1
.end method

.method private addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V
    .locals 3
    .param p1, "layout"    # Lcom/android/camera/ui/RotateLayout;

    .prologue
    const/4 v2, 0x1

    .line 368
    iget v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mOrientation:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    .line 369
    const/16 v0, 0x10e

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 375
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeRotateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    return-void

    .line 370
    :cond_0
    iget v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0

    .line 373
    :cond_1
    iget v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mOrientation:I

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0
.end method

.method private animateProModeLayout()V
    .locals 4

    .prologue
    .line 395
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeSeekBarList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 410
    :goto_0
    return-void

    .line 398
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeSeekBarList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 399
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeSeekBarList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ProModeSeekBar;

    .line 400
    .local v2, "seekBar":Lcom/android/camera/ui/ProModeSeekBar;
    if-nez v2, :cond_2

    .line 398
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 402
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEnabled:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 403
    .local v0, "enabled":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 406
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 407
    invoke-virtual {v2}, Lcom/android/camera/ui/ProModeSeekBar;->setAnimateVisible()V

    goto :goto_2

    .line 409
    .end local v0    # "enabled":Ljava/lang/Boolean;
    .end local v2    # "seekBar":Lcom/android/camera/ui/ProModeSeekBar;
    :cond_3
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/camera/ManualHal3ProModuleUI;->setCameraControlBarOption(Z)V

    goto :goto_0
.end method

.method private clearIconBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 387
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 391
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 392
    :cond_4
    return-void
.end method

.method private expandOrFoldOption(Lcom/android/camera/ui/ProModeSeekBar;ZZ)V
    .locals 2
    .param p1, "seekBar"    # Lcom/android/camera/ui/ProModeSeekBar;
    .param p2, "forceFold"    # Z
    .param p3, "animated"    # Z

    .prologue
    .line 447
    invoke-virtual {p1}, Lcom/android/camera/ui/ProModeSeekBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const/16 v0, 0x8

    .line 448
    .local v0, "visible":I
    :goto_0
    if-eqz p2, :cond_0

    const/16 v0, 0x8

    .line 449
    :cond_0
    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    .line 450
    invoke-virtual {p1}, Lcom/android/camera/ui/ProModeSeekBar;->setAnimateVisible()V

    .line 454
    :goto_1
    if-nez v0, :cond_1

    .line 455
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/ManualHal3ProModuleUI;->setCameraControlBarOption(Z)V

    .line 457
    :cond_1
    return-void

    .line 447
    .end local v0    # "visible":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 452
    .restart local v0    # "visible":I
    :cond_3
    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    goto :goto_1
.end method

.method private hideHintText()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProHint:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private inflateMenuModeOptions(Ljava/util/ArrayList;Lcom/android/camera/ui/ProModeSeekBar;Lcom/android/camera/ui/RotateLayout;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p2, "seekBar"    # Lcom/android/camera/ui/ProModeSeekBar;
    .param p3, "iconLayout"    # Lcom/android/camera/ui/RotateLayout;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "currentValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;",
            "Lcom/android/camera/ui/ProModeSeekBar;",
            "Lcom/android/camera/ui/RotateLayout;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 845
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 846
    const-string v1, "pref_camera_zoom_key"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pref_camera_manual_focus_mode"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "pref_camera_zoom_key"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p2, p1, p5, v1, v4}, Lcom/android/camera/ui/ProModeSeekBar;->setMax(Ljava/util/ArrayList;Ljava/lang/String;ZZ)V

    .line 847
    new-instance v1, Lcom/android/camera/ManualHal3ProModuleUI$7;

    invoke-direct {v1, p0, p4, p1}, Lcom/android/camera/ManualHal3ProModuleUI$7;-><init>(Lcom/android/camera/ManualHal3ProModuleUI;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setListener(Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;)V

    .line 869
    invoke-virtual {p2, v3}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 870
    invoke-virtual {p2}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 871
    invoke-virtual {p3, v3}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 872
    invoke-virtual {p3}, Lcom/android/camera/ui/RotateLayout;->requestLayout()V

    .line 873
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEnabled:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    const/4 v0, 0x1

    .line 883
    .local v0, "isSuccess":Z
    :goto_1
    return v0

    .end local v0    # "isSuccess":Z
    :cond_0
    move v1, v3

    .line 846
    goto :goto_0

    .line 876
    :cond_1
    invoke-virtual {p2, v4}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 877
    invoke-virtual {p2}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 878
    invoke-virtual {p3, v4}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 879
    invoke-virtual {p3}, Lcom/android/camera/ui/RotateLayout;->requestLayout()V

    .line 880
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEnabled:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    const/4 v0, 0x0

    .restart local v0    # "isSuccess":Z
    goto :goto_1
.end method

.method private initManualModeAwbLayout()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbIcon:Landroid/widget/ImageView;

    .line 358
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbTv:Landroid/widget/TextView;

    .line 359
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    .line 360
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/ManualHal3ProModuleUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 362
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ProModeSeekBar;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    .line 363
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mProClipPaddingSize:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setClipPaddingSize(I)V

    .line 364
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeSeekBarList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    return-void
.end method

.method private initManualModeAwbOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 8
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 718
    if-nez p1, :cond_1

    .line 719
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->requestLayout()V

    .line 721
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 723
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEnabled:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v7

    .line 728
    .local v7, "supportedWhiteBalanceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 729
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->requestLayout()V

    .line 731
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 733
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEnabled:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 736
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0, p1}, Lcom/android/camera/ManualDataUtil;->getWhiteBalance(Landroid/content/Context;Lcom/android/camera/one/OneCameraCharacteristics;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mWBItemLists:Ljava/util/ArrayList;

    .line 737
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_whitebalance_mode_key"

    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0803d7

    .line 738
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 737
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 739
    .local v5, "currentValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mWBItemLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    const-string v4, "pref_camera_whitebalance_mode_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualHal3ProModuleUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Lcom/android/camera/ui/ProModeSeekBar;Lcom/android/camera/ui/RotateLayout;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 740
    .local v6, "success":Z
    if-eqz v6, :cond_0

    const-string v0, "pref_camera_whitebalance_mode_key"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/ManualHal3ProModuleUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initManualModeEtLayout()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtIcon:Landroid/widget/ImageView;

    .line 325
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0173

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtTv:Landroid/widget/TextView;

    .line 326
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    .line 327
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/ManualHal3ProModuleUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 329
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ProModeSeekBar;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    .line 330
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mProClipPaddingSize:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setClipPaddingSize(I)V

    .line 331
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeSeekBarList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    return-void
.end method

.method private initManualModeEtOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 9
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 632
    if-nez p1, :cond_1

    .line 633
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 634
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->requestLayout()V

    .line 635
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 637
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEnabled:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getMaxSensorExposureTime()J

    move-result-wide v0

    long-to-float v6, v0

    .line 642
    .local v6, "max":F
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getMinSensorExposureTime()J

    move-result-wide v0

    long-to-float v7, v0

    .line 643
    .local v7, "min":F
    cmpl-float v0, v6, v3

    if-nez v0, :cond_2

    cmpl-float v0, v7, v3

    if-nez v0, :cond_2

    .line 644
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->requestLayout()V

    .line 646
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 647
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 648
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEnabled:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 652
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0, p1}, Lcom/android/camera/ManualDataUtil;->getAutoExposureTimeItems(Landroid/content/Context;Lcom/android/camera/one/OneCameraCharacteristics;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mETItemLists:Ljava/util/ArrayList;

    .line 653
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_manual_exposure_time_key"

    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f080405

    .line 654
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 653
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 655
    .local v5, "currentValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mETItemLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    const-string v4, "pref_camera_manual_exposure_time_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualHal3ProModuleUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Lcom/android/camera/ui/ProModeSeekBar;Lcom/android/camera/ui/RotateLayout;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 657
    .local v8, "success":Z
    if-eqz v8, :cond_0

    const-string v0, "pref_camera_manual_exposure_time_key"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/ManualHal3ProModuleUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initManualModeEvLayout()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvIcon:Landroid/widget/ImageView;

    .line 314
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvTv:Landroid/widget/TextView;

    .line 315
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    .line 316
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/ManualHal3ProModuleUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 318
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ProModeSeekBar;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    .line 319
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mProClipPaddingSize:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setClipPaddingSize(I)V

    .line 320
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeSeekBarList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    return-void
.end method

.method private initManualModeEvOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 9
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 604
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->isExposureCompensationSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->requestLayout()V

    .line 607
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 609
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEnabled:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    :cond_1
    :goto_0
    return-void

    .line 613
    :cond_2
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getMaxExposureCompensation()I

    move-result v6

    .line 614
    .local v6, "max":I
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getMinExposureCompensation()I

    move-result v7

    .line 615
    .local v7, "min":I
    if-nez v6, :cond_3

    if-nez v7, :cond_3

    .line 616
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->requestLayout()V

    .line 618
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 619
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 620
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEnabled:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 624
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0, p1}, Lcom/android/camera/ManualDataUtil;->getExposureCompensationItems(Landroid/content/Context;Lcom/android/camera/one/OneCameraCharacteristics;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mEVItemLists:Ljava/util/ArrayList;

    .line 625
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_manual_exposure_key"

    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f080402

    .line 626
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 625
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 627
    .local v5, "currentValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mEVItemLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    const-string v4, "pref_camera_manual_exposure_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualHal3ProModuleUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Lcom/android/camera/ui/ProModeSeekBar;Lcom/android/camera/ui/RotateLayout;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 628
    .local v8, "success":Z
    if-eqz v8, :cond_1

    const-string v0, "pref_camera_manual_exposure_key"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/ManualHal3ProModuleUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initManualModeFocusLayout()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfIcon:Landroid/widget/ImageView;

    .line 347
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfTv:Landroid/widget/TextView;

    .line 348
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    .line 349
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/ManualHal3ProModuleUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 351
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ProModeSeekBar;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    .line 352
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mProClipPaddingSize:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setClipPaddingSize(I)V

    .line 353
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeSeekBarList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    return-void
.end method

.method private initManualModeFocusOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 8
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 690
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getMinimumFocusDistance()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->requestLayout()V

    .line 694
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 696
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEnabled:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    :cond_1
    :goto_0
    return-void

    .line 700
    :cond_2
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedFocusMode()Ljava/util/List;

    move-result-object v7

    .line 701
    .local v7, "supportedFocusModeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 702
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->requestLayout()V

    .line 704
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 706
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEnabled:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 710
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/camera/ManualDataUtil;->getFocusModes(Landroid/content/Context;Lcom/android/camera/one/OneCameraCharacteristics;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mMFItemLists:Ljava/util/ArrayList;

    .line 711
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_manual_focus_mode"

    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f080406

    .line 712
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 711
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 713
    .local v5, "currentValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mMFItemLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    const-string v4, "pref_camera_manual_focus_mode"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualHal3ProModuleUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Lcom/android/camera/ui/ProModeSeekBar;Lcom/android/camera/ui/RotateLayout;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 714
    .local v6, "success":Z
    if-eqz v6, :cond_1

    const-string v0, "pref_camera_manual_focus_mode"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/ManualHal3ProModuleUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initManualModeIsoLayout()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoIcon:Landroid/widget/ImageView;

    .line 336
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoTv:Landroid/widget/TextView;

    .line 337
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    .line 338
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/ManualHal3ProModuleUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 340
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ProModeSeekBar;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    .line 341
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mProClipPaddingSize:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setClipPaddingSize(I)V

    .line 342
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeSeekBarList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    return-void
.end method

.method private initManualModeIsoOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 9
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 661
    if-nez p1, :cond_1

    .line 662
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->requestLayout()V

    .line 664
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 665
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 666
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEnabled:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getMaxISO()I

    move-result v0

    int-to-float v6, v0

    .line 671
    .local v6, "max":F
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getMinISO()I

    move-result v0

    int-to-float v7, v0

    .line 672
    .local v7, "min":F
    cmpl-float v0, v6, v2

    if-nez v0, :cond_2

    cmpl-float v0, v7, v2

    if-nez v0, :cond_2

    .line 673
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->requestLayout()V

    .line 675
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 677
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEnabled:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 681
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0, p1}, Lcom/android/camera/ManualDataUtil;->getISOItems(Landroid/content/Context;Lcom/android/camera/one/OneCameraCharacteristics;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mISOItemLists:Ljava/util/ArrayList;

    .line 682
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_manual_exposure_iso"

    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f080408

    .line 683
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 682
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 684
    .local v5, "currentValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mISOItemLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    const-string v4, "pref_camera_manual_exposure_iso"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualHal3ProModuleUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Lcom/android/camera/ui/ProModeSeekBar;Lcom/android/camera/ui/RotateLayout;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 686
    .local v8, "success":Z
    if-eqz v8, :cond_0

    const-string v0, "pref_camera_manual_exposure_iso"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/ManualHal3ProModuleUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initManualModeLayout()V
    .locals 8

    .prologue
    .line 281
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0f017f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeRootView:Landroid/widget/FrameLayout;

    .line 282
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeRotateList:Ljava/util/List;

    .line 283
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeSeekBarList:Ljava/util/List;

    .line 284
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0f0167

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualModeControlBar:Landroid/widget/FrameLayout;

    .line 285
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0f0180

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeFrame:Landroid/widget/FrameLayout;

    .line 286
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0f017e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProHint:Landroid/widget/TextView;

    .line 287
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0f017d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/RotateLayout;

    iput-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProHintRotateLayout:Lcom/android/camera/ui/RotateLayout;

    .line 288
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeRotateList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProHintRotateLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 290
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 291
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 292
    new-instance v3, Lcom/android/camera/ManualHal3ProModuleUI$4;

    invoke-direct {v3, p0, v2}, Lcom/android/camera/ManualHal3ProModuleUI$4;-><init>(Lcom/android/camera/ManualHal3ProModuleUI;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 301
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getBottomBarHeightByDUT()I

    move-result v0

    .line 302
    .local v0, "bottomBarHeight":I
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/util/ProductModelUtil;->isLargeScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    int-to-double v4, v3

    const-wide v6, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    sub-int v3, v0, v3

    .line 303
    :goto_0
    iput v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mProClipPaddingSize:I

    .line 305
    invoke-direct {p0}, Lcom/android/camera/ManualHal3ProModuleUI;->initManualModeEvLayout()V

    .line 306
    invoke-direct {p0}, Lcom/android/camera/ManualHal3ProModuleUI;->initManualModeEtLayout()V

    .line 307
    invoke-direct {p0}, Lcom/android/camera/ManualHal3ProModuleUI;->initManualModeIsoLayout()V

    .line 308
    invoke-direct {p0}, Lcom/android/camera/ManualHal3ProModuleUI;->initManualModeFocusLayout()V

    .line 309
    invoke-direct {p0}, Lcom/android/camera/ManualHal3ProModuleUI;->initManualModeAwbLayout()V

    .line 310
    return-void

    .line 302
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 303
    invoke-static {v3}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    sub-int v3, v0, v3

    goto :goto_0
.end method

.method private initProModeLayout(Z)V
    .locals 11
    .param p1, "isChanged"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 413
    iget-object v7, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualModeControlBar:Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    .line 414
    iget-object v10, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualModeControlBar:Landroid/widget/FrameLayout;

    iget-boolean v7, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mIsEditableMode:Z

    if-eqz v7, :cond_2

    const/16 v7, 0x8

    :goto_0
    invoke-virtual {v10, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 415
    :cond_0
    iget-boolean v7, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mIsEditableMode:Z

    invoke-direct {p0, v7}, Lcom/android/camera/ManualHal3ProModuleUI;->setCameraControlBarOption(Z)V

    .line 416
    invoke-direct {p0}, Lcom/android/camera/ManualHal3ProModuleUI;->clearIconBackground()V

    .line 417
    const/4 v3, 0x0

    .line 418
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeSeekBarList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_8

    .line 419
    iget-object v7, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeSeekBarList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/ProModeSeekBar;

    .line 420
    .local v6, "seekBar":Lcom/android/camera/ui/ProModeSeekBar;
    if-nez v6, :cond_3

    .line 418
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v6    # "seekBar":Lcom/android/camera/ui/ProModeSeekBar;
    :cond_2
    move v7, v8

    .line 414
    goto :goto_0

    .line 422
    .restart local v2    # "i":I
    .restart local v3    # "index":I
    .restart local v6    # "seekBar":Lcom/android/camera/ui/ProModeSeekBar;
    :cond_3
    iget-object v7, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEnabled:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 423
    .local v0, "enabled":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 426
    iget-boolean v7, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mIsEditableMode:Z

    if-eqz v7, :cond_4

    add-int/lit8 v1, v3, 0x1

    .line 427
    .local v1, "factor":I
    :goto_3
    iget-boolean v7, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mIsEditableMode:Z

    if-nez v7, :cond_5

    move v7, v9

    :goto_4
    invoke-virtual {v6, v7}, Lcom/android/camera/ui/ProModeSeekBar;->setRestrictMode(Z)V

    .line 428
    invoke-virtual {v6}, Lcom/android/camera/ui/ProModeSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 430
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/util/ProductModelUtil;->isLargeScreen(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0900b4

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 433
    .local v5, "radius":I
    :goto_5
    iget-object v7, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0900b0

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/2addr v7, v1

    add-int/2addr v7, v5

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 434
    invoke-virtual {v6, v4}, Lcom/android/camera/ui/ProModeSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    iget-boolean v7, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mIsEditableMode:Z

    if-eqz v7, :cond_7

    .line 436
    invoke-virtual {v6, v9}, Lcom/android/camera/ui/ProModeSeekBar;->setIsMovable(Z)V

    .line 437
    invoke-virtual {v6}, Lcom/android/camera/ui/ProModeSeekBar;->setAnimateVisible()V

    .line 442
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 426
    .end local v1    # "factor":I
    .end local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "radius":I
    :cond_4
    const/4 v1, 0x2

    goto :goto_3

    .restart local v1    # "factor":I
    :cond_5
    move v7, v8

    .line 427
    goto :goto_4

    .line 430
    .restart local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    iget-object v7, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 431
    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0900b3

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_5

    .line 439
    .restart local v5    # "radius":I
    :cond_7
    invoke-virtual {v6, v8}, Lcom/android/camera/ui/ProModeSeekBar;->setIsMovable(Z)V

    .line 440
    invoke-virtual {v6, p1}, Lcom/android/camera/ui/ProModeSeekBar;->setAnimateGone(Z)V

    goto :goto_6

    .line 444
    .end local v0    # "enabled":Ljava/lang/Boolean;
    .end local v1    # "factor":I
    .end local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "radius":I
    .end local v6    # "seekBar":Lcom/android/camera/ui/ProModeSeekBar;
    :cond_8
    return-void
.end method

.method private initializeManualModeOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 1
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;

    .prologue
    .line 595
    invoke-direct {p0, p1}, Lcom/android/camera/ManualHal3ProModuleUI;->initManualModeEvOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 596
    invoke-direct {p0, p1}, Lcom/android/camera/ManualHal3ProModuleUI;->initManualModeEtOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 597
    invoke-direct {p0, p1}, Lcom/android/camera/ManualHal3ProModuleUI;->initManualModeIsoOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 598
    invoke-direct {p0, p1}, Lcom/android/camera/ManualHal3ProModuleUI;->initManualModeFocusOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 599
    invoke-direct {p0, p1}, Lcom/android/camera/ManualHal3ProModuleUI;->initManualModeAwbOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 600
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ManualHal3ProModuleUI;->initProModeLayout(Z)V

    .line 601
    return-void
.end method

.method private setCameraControlBarOption(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .prologue
    .line 379
    if-eqz p1, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setModeTextVisible(I)V

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setModeTextVisible(I)V

    goto :goto_0
.end method

.method private showHintText(Ljava/lang/String;)V
    .locals 4
    .param p1, "hintText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProHint:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProHint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProHint:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 946
    :cond_0
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 988
    :cond_0
    return-void
.end method

.method public evaluationEditSingleRing()V
    .locals 3

    .prologue
    .line 520
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mIsEditSingleRing:Z

    .line 521
    iget-boolean v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mInitializeFirstTime:Z

    if-nez v1, :cond_1

    .line 522
    sget-object v1, Lcom/android/camera/ManualHal3ProModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "foldAllOptions() mInitializeFirstTime is false."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mIsLayoutInflated:Z

    if-nez v1, :cond_2

    .line 527
    sget-object v1, Lcom/android/camera/ManualHal3ProModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "foldAllOptions() mIsLayoutInflated is false."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 530
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeSeekBarList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 531
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeSeekBarList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v1}, Lcom/android/camera/ui/ProModeSeekBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 532
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mIsEditSingleRing:Z

    goto :goto_0

    .line 530
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public foldAllOptions()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 461
    iget-boolean v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mInitializeFirstTime:Z

    if-nez v1, :cond_0

    .line 462
    sget-object v1, Lcom/android/camera/ManualHal3ProModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "foldAllOptions() mInitializeFirstTime is false."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 477
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mIsLayoutInflated:Z

    if-nez v1, :cond_1

    .line 467
    sget-object v1, Lcom/android/camera/ManualHal3ProModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "foldAllOptions() mIsLayoutInflated is false."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ManualHal3ProModuleUI;->hideHintText()V

    .line 472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeSeekBarList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 473
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeSeekBarList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ProModeSeekBar;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/ManualHal3ProModuleUI;->expandOrFoldOption(Lcom/android/camera/ui/ProModeSeekBar;ZZ)V

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 475
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ManualHal3ProModuleUI;->clearIconBackground()V

    .line 476
    invoke-direct {p0, v3}, Lcom/android/camera/ManualHal3ProModuleUI;->setCameraControlBarOption(Z)V

    goto :goto_0
.end method

.method public getBitMapFromPreview()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 949
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 950
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0, v5}, Lcom/android/camera/ManualHal3ProModuleUI;->getPreviewTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    .line 951
    iget-object v2, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 952
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

.method public getEditSingleRing()Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mIsEditSingleRing:Z

    return v0
.end method

.method public getEditableMode()Z
    .locals 1

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mIsEditableMode:Z

    return v0
.end method

.method public getFaceView()Lcom/android/camera/ui/FaceView;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getPreviewAreaHeight()I
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mPreviewArea:Landroid/graphics/RectF;

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
    .line 890
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mPreviewArea:Landroid/graphics/RectF;

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
    .line 901
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public initializeZoom(FF)V
    .locals 3
    .param p1, "maxZoom"    # F
    .param p2, "currentZoom"    # F

    .prologue
    .line 963
    iput p1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mMaxZoom:F

    .line 964
    iput p2, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mZoomValue:F

    .line 965
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/camera/face/Camera2FaceConverter;->setZoomValue(F)V

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mMaxZoom:F

    iget-object v2, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    .line 969
    return-void
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadModuleLayout(Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 4
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;

    .prologue
    .line 236
    sget-object v1, Lcom/android/camera/ManualHal3ProModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "loadModuleLayout()"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 237
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mPause:Z

    .line 238
    iget-boolean v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mInitializeFirstTime:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mIsLayoutInflated:Z

    if-eqz v1, :cond_0

    .line 239
    sget-object v1, Lcom/android/camera/ManualHal3ProModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "initializeManualModeOptions() start"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 240
    invoke-direct {p0, p1}, Lcom/android/camera/ManualHal3ProModuleUI;->initializeManualModeOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 241
    sget-object v1, Lcom/android/camera/ManualHal3ProModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "initializeManualModeOptions() end"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 278
    :goto_0
    return-void

    .line 245
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mInitializeFirstTime:Z

    .line 246
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 247
    .local v0, "asyncLayoutInflater":Landroid/support/v4/view/AsyncLayoutInflater;
    const v2, 0x7f040055

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mModuleRoot:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/camera/ManualHal3ProModuleUI$3;

    invoke-direct {v3, p0, p1}, Lcom/android/camera/ManualHal3ProModuleUI$3;-><init>(Lcom/android/camera/ManualHal3ProModuleUI;Lcom/android/camera/one/OneCameraCharacteristics;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    goto :goto_0
.end method

.method public onFaceDetection([Landroid/hardware/camera2/params/Face;)V
    .locals 2
    .param p1, "faceList"    # [Landroid/hardware/camera2/params/Face;

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-nez v0, :cond_1

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    invoke-virtual {v1, p1}, Lcom/android/camera/face/Camera2FaceConverter;->convertCamera2Face([Landroid/hardware/camera2/params/Face;)[Lcom/android/camera/face/FaceData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/face/FaceData;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mPause:Z

    .line 1009
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/ManualHal3ProModuleUI;->setEditableMode(ZZ)V

    .line 1010
    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    .line 1045
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 1051
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
    .line 1014
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1016
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 1017
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 1018
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 1019
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 1020
    new-instance v0, Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mZoomValue:F

    invoke-direct {v0, p3, p2, v1, p4}, Lcom/android/camera/face/Camera2FaceConverter;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;ZFLcom/android/camera/util/Size;)V

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 1022
    :cond_0
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1028
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 1029
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 1030
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 1032
    :cond_0
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 2

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1002
    :cond_0
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 2

    .prologue
    .line 992
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 995
    :cond_0
    return-void
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 928
    iput-object p1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .line 929
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 930
    :cond_0
    return-void
.end method

.method public setEditableMode(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "animateOnly"    # Z

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mInitializeFirstTime:Z

    if-nez v0, :cond_1

    .line 482
    sget-object v0, Lcom/android/camera/ManualHal3ProModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "setEditableMode() mInitializeFirstTime is false."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mIsLayoutInflated:Z

    if-nez v0, :cond_2

    .line 487
    sget-object v0, Lcom/android/camera/ManualHal3ProModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "setEditableMode() mIsLayoutInflated is false."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 491
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mIsEditableMode:Z

    if-ne v0, p1, :cond_4

    .line 493
    if-eqz p1, :cond_3

    .line 494
    invoke-direct {p0}, Lcom/android/camera/ManualHal3ProModuleUI;->animateProModeLayout()V

    goto :goto_0

    .line 496
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ManualHal3ProModuleUI;->evaluationEditSingleRing()V

    goto :goto_0

    .line 502
    :cond_4
    if-nez p2, :cond_0

    .line 504
    iput-boolean p1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mIsEditableMode:Z

    .line 505
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ManualHal3ProModuleUI;->initProModeLayout(Z)V

    .line 506
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mIsEditableMode:Z

    invoke-direct {p0, v0}, Lcom/android/camera/ManualHal3ProModuleUI;->setCameraControlBarOption(Z)V

    goto :goto_0
.end method

.method public setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    .prologue
    .line 978
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 981
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 1055
    iput p1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mOrientation:I

    .line 1056
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 1057
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeRotateList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1058
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeRotateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1059
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeRotateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1058
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1062
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeSeekBarList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1063
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeSeekBarList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1064
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeSeekBarList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/ProModeSeekBar;->setOrientation(IZ)V

    .line 1063
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1067
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public setViewVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualProModeRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualModeControlBar:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualModeControlBar:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1072
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 1073
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 1074
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 1075
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 1076
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 1077
    :cond_6
    return-void
.end method

.method public startCountdown(I)V
    .locals 1
    .param p1, "sec"    # I

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->startCountDown(I)V

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;->onCountDownFinished()V

    goto :goto_0
.end method

.method public updateManualContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 754
    const/4 v5, 0x0

    .line 755
    .local v5, "text":Ljava/lang/String;
    const/4 v3, -0x1

    .line 756
    .local v3, "icon_not_exist":I
    const/4 v2, -0x1

    .line 759
    .local v2, "icon":I
    const-string v6, "pref_camera_manual_exposure_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mEVItemLists:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 760
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6}, Lcom/android/camera/ui/ProModeSeekBar;->getProgress()I

    move-result v4

    .line 761
    .local v4, "progress":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mEVItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 762
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mEVItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v6}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 763
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mEVItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    .line 764
    .local v0, "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    invoke-virtual {v0}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v5

    .line 765
    move v4, v1

    .line 769
    .end local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    :cond_0
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6, v4}, Lcom/android/camera/ui/ProModeSeekBar;->setProgress(I)V

    .line 823
    .end local v1    # "i":I
    .end local v4    # "progress":I
    :cond_1
    :goto_1
    return-void

    .line 761
    .restart local v1    # "i":I
    .restart local v4    # "progress":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 771
    .end local v1    # "i":I
    .end local v4    # "progress":I
    :cond_3
    const-string v6, "pref_camera_manual_exposure_time_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mETItemLists:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 772
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6}, Lcom/android/camera/ui/ProModeSeekBar;->getProgress()I

    move-result v4

    .line 773
    .restart local v4    # "progress":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mETItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 774
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mETItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v6}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 775
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mETItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    .line 776
    .restart local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    invoke-virtual {v0}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v5

    .line 777
    move v4, v1

    .line 781
    .end local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    :cond_4
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6, v4}, Lcom/android/camera/ui/ProModeSeekBar;->setProgress(I)V

    .line 783
    invoke-virtual {p0, p2}, Lcom/android/camera/ManualHal3ProModuleUI;->updateManualContentVisible(Ljava/lang/String;)V

    goto :goto_1

    .line 773
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 784
    .end local v1    # "i":I
    .end local v4    # "progress":I
    :cond_6
    const-string v6, "pref_camera_manual_exposure_iso"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mISOItemLists:Ljava/util/ArrayList;

    if-eqz v6, :cond_9

    .line 785
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6}, Lcom/android/camera/ui/ProModeSeekBar;->getProgress()I

    move-result v4

    .line 786
    .restart local v4    # "progress":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mISOItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_7

    .line 787
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mISOItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v6}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 788
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mISOItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    .line 789
    .restart local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    invoke-virtual {v0}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v5

    .line 790
    move v4, v1

    .line 794
    .end local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    :cond_7
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6, v4}, Lcom/android/camera/ui/ProModeSeekBar;->setProgress(I)V

    goto/16 :goto_1

    .line 786
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 796
    .end local v1    # "i":I
    .end local v4    # "progress":I
    :cond_9
    const-string v6, "pref_camera_manual_focus_mode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mMFItemLists:Ljava/util/ArrayList;

    if-eqz v6, :cond_c

    .line 797
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6}, Lcom/android/camera/ui/ProModeSeekBar;->getProgress()I

    move-result v4

    .line 798
    .restart local v4    # "progress":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mMFItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_a

    .line 799
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mMFItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v6}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 800
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mMFItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    .line 801
    .restart local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    invoke-virtual {v0}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v5

    .line 802
    move v4, v1

    .line 806
    .end local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    :cond_a
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6, v4}, Lcom/android/camera/ui/ProModeSeekBar;->setProgress(I)V

    goto/16 :goto_1

    .line 798
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 808
    .end local v1    # "i":I
    .end local v4    # "progress":I
    :cond_c
    const-string v6, "pref_camera_whitebalance_mode_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mWBItemLists:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 809
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6}, Lcom/android/camera/ui/ProModeSeekBar;->getProgress()I

    move-result v4

    .line 810
    .restart local v4    # "progress":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mWBItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_d

    .line 811
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mWBItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v6}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 812
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mWBItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    .line 813
    .restart local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    sget-object v6, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->MANI:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    invoke-virtual {v0, v6}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getIcon(Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;)I

    move-result v2

    .line 814
    invoke-virtual {v0}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v5

    .line 815
    move v4, v1

    .line 819
    .end local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    :cond_d
    if-eqz v5, :cond_e

    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    :cond_e
    const/4 v6, -0x1

    if-eq v2, v6, :cond_f

    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 821
    :cond_f
    iget-object v6, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6, v4}, Lcom/android/camera/ui/ProModeSeekBar;->setProgress(I)V

    goto/16 :goto_1

    .line 810
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public updateManualContentUI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ManualHal3ProModuleUI$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/ManualHal3ProModuleUI$6;-><init>(Lcom/android/camera/ManualHal3ProModuleUI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 751
    return-void
.end method

.method public updateManualContentVisible(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 826
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f080404

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ProModeSeekBar;->setIsTouchEnabled(Z)V

    .line 828
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateLayout;->setClickable(Z)V

    .line 829
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvTv:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 830
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 831
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 839
    :goto_0
    return-void

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ProModeSeekBar;->setIsTouchEnabled(Z)V

    .line 834
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setClickable(Z)V

    .line 835
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mDisableColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 836
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 837
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mManualEvIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/ManualHal3ProModuleUI;->mDisableColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method
