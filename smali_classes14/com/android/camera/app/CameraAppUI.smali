.class public Lcom/android/camera/app/CameraAppUI;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;
.implements Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/AbstractTutorialOverlay$CloseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/CameraAppUI$MyGestureListener;,
        Lcom/android/camera/app/CameraAppUI$MyTouchListener;,
        Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;,
        Lcom/android/camera/app/CameraAppUI$NonDecorWindowSizeChangedListener;,
        Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;,
        Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;,
        Lcom/android/camera/app/CameraAppUI$BottomPanel;,
        Lcom/android/camera/app/CameraAppUI$OnModeListViewReadyListener;,
        Lcom/android/camera/app/CameraAppUI$OnFilmStripReadyListener;
    }
.end annotation


# static fields
.field private static final COVER_HIDDEN:I = 0x0

.field private static final COVER_SHOWN:I = 0x1

.field private static final COVER_WILL_HIDE_AFTER_NEXT_TEXTURE_UPDATE:I = 0x3

.field private static final COVER_WILL_HIDE_AT_NEXT_FRAME:I = 0x2

.field private static final COVER_WILL_HIDE_AT_NEXT_TEXTURE_UPDATE:I = 0x4

.field private static final DOWN_SAMPLE_RATE_FOR_BLUR_PREVIEW:I = 0x8

.field private static final DOWN_SAMPLE_RATE_FOR_BLUR_SCREENSHOT:I = 0x8

.field private static final DOWN_SAMPLE_RATE_FOR_SCREENSHOT:I = 0x1

.field private static final DOWN_SAMPLE_RATE_FOR__BLUR_SCREENSHOT:I = 0x4

.field public static final EDGE_IN_PX:I = 0x64

.field public static final IDLE:I = 0x0

.field public static final SWIPE_DOWN:I = 0x2

.field public static final SWIPE_LEFT:I = 0x3

.field public static final SWIPE_RIGHT:I = 0x4

.field public static final SWIPE_RIGHT_FROM_EDGE:I = 0x5

.field private static final SWIPE_TIME_OUT_MS:I = 0x1f4

.field public static final SWIPE_UP:I = 0x1

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mAccessibilityUtil:Lcom/android/camera/AccessibilityUtil;

.field private final mAppRootView:Lcom/android/camera/ui/MainActivityLayout;

.field private mBottomBarHeight:I

.field private mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

.field private mBottomCaptureLayoutOperation:Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;

.field private final mCameraModuleScreenShotProvider:Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;

.field private final mCameraRootView:Landroid/widget/FrameLayout;

.field private final mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

.field private mCaptureOverlay:Lcom/android/camera/ui/CaptureAnimationOverlay;

.field private final mController:Lcom/android/camera/app/AppController;

.field private mCountdownCancelButton:Landroid/widget/ImageButton;

.field private mCoverHiddenTime:J

.field private mCurrentCameraScope:Ljava/lang/String;

.field private mCurrentModuleScope:Ljava/lang/String;

.field private mDefaultRoundedThumbnailView:Landroid/widget/ImageView;

.field private mDisableAllUserInteractions:Z

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mEndSwitchToOtherModeRunnable:Ljava/lang/Runnable;

.field private mFilmstripBottomControls:Lcom/android/camera/app/FilmstripBottomPanel;

.field private mFilmstripLayout:Lcom/android/camera/widget/FilmstripLayout;

.field private mFilmstripPanel:Lcom/android/camera/filmstrip/FilmstripContentPanel;

.field private final mFirstTimeLaunchRunnable:Ljava/lang/Runnable;

.field private mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field mFrontFlashSupportedList:[I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGridLines:Lcom/android/camera/ui/GridLines;

.field private mHDRBadge:Lcom/android/camera/ui/RotateImageView;

.field private mHDRBadgeLL:Landroid/widget/LinearLayout;

.field private mHideCoverRunnable:Ljava/lang/Runnable;

.field private mIconList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsCaptureIntent:Z

.field private mIsFirstTimeLaunch:Z

.field private mIsHideFlash:Z

.field private mIsNaviHide:Z

.field private mIsSwitchToOtherMode:Z

.field private mLastRotation:I

.field private final mLensClickListener:Landroid/view/View$OnClickListener;

.field mMainFlashSupportedList:[I

.field private mModeCoverState:I

.field private mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

.field private mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

.field private mModePicker:Lcom/android/camera/ui/ModePicker;

.field private final mModeTransitionRotateLayout:Lcom/android/camera/ui/RotateLayout;

.field private final mModeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

.field private mModuleUI:Landroid/widget/FrameLayout;

.field private mNeedHideModeCover:Z

.field private mNotchEnable:Z

.field private mOrientation:I

.field private mPreModeIndex:I

.field private final mPreviewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

.field mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

.field private mPreviewTransitionView:Lcom/android/camera/ui/PreviewTransitionView;

.field private mProModuleUI:Landroid/widget/FrameLayout;

.field private mProfile:Lcom/android/camera/stats/profiler/Profile;

.field private final mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

.field private mSRBadge:Lcom/android/camera/ui/RotateImageView;

.field private mSRBadgeLL:Landroid/widget/LinearLayout;

.field private mShowModeBlurCover:Z

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSlop:I

.field private mSuppressCaptureIndicator:Z

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mSwipeEnabled:Z

.field private mSwipeState:I

.field private mSwitchAnimationView:Lcom/android/camera/ui/SwitchAnimationView;

.field private mSwitchCameraPreviewArrived:Z

.field private mSwtichCameraView:Landroid/view/View;

.field private mTextureView:Lcom/android/camera/ui/CustomTextureView;

.field private mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

.field private mTutorialOverlay:Lcom/android/camera/ui/AbstractTutorialOverlay;

.field private mTutorialsPlaceHolderWrapper:Landroid/widget/FrameLayout;

.field private mUseModuleListenerFirst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 726
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CameraAppUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Lcom/android/camera/ui/MainActivityLayout;Z)V
    .locals 12
    .param p1, "controller"    # Lcom/android/camera/app/AppController;
    .param p2, "appRootView"    # Lcom/android/camera/ui/MainActivityLayout;
    .param p3, "isCaptureIntent"    # Z

    .prologue
    .line 1156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mSwipeEnabled:Z

    .line 747
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarHeight:I

    .line 749
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/app/CameraAppUI;->mSlop:I

    .line 792
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/app/CameraAppUI;->mSwipeState:I

    .line 806
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeCoverState:I

    .line 810
    new-instance v0, Lcom/android/camera/app/CameraAppUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/app/CameraAppUI$1;-><init>(Lcom/android/camera/app/CameraAppUI;)V

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 835
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mUseModuleListenerFirst:Z

    .line 841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mNeedHideModeCover:Z

    .line 842
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mNotchEnable:Z

    .line 848
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mIsSwitchToOtherMode:Z

    .line 852
    new-instance v0, Lcom/android/camera/app/CameraAppUI$2;

    invoke-direct {v0, p0}, Lcom/android/camera/app/CameraAppUI$2;-><init>(Lcom/android/camera/app/CameraAppUI;)V

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mLensClickListener:Landroid/view/View$OnClickListener;

    .line 910
    new-instance v0, Lcom/android/camera/app/CameraAppUI$3;

    invoke-direct {v0, p0}, Lcom/android/camera/app/CameraAppUI$3;-><init>(Lcom/android/camera/app/CameraAppUI;)V

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mCameraModuleScreenShotProvider:Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;

    .line 995
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/app/CameraAppUI;->mCoverHiddenTime:J

    .line 2490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mIsFirstTimeLaunch:Z

    .line 2491
    new-instance v0, Lcom/android/camera/app/CameraAppUI$14;

    invoke-direct {v0, p0}, Lcom/android/camera/app/CameraAppUI$14;-><init>(Lcom/android/camera/app/CameraAppUI;)V

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFirstTimeLaunchRunnable:Ljava/lang/Runnable;

    .line 1157
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    .line 1158
    iput-boolean p3, p0, Lcom/android/camera/app/CameraAppUI;->mIsCaptureIntent:Z

    .line 1160
    iput-object p2, p0, Lcom/android/camera/app/CameraAppUI;->mAppRootView:Lcom/android/camera/ui/MainActivityLayout;

    .line 1161
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 1162
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040027

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 1163
    .local v11, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mAppRootView:Lcom/android/camera/ui/MainActivityLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1}, Lcom/android/camera/ui/MainActivityLayout;->addView(Landroid/view/View;I)V

    .line 1164
    const v0, 0x7f0f00c2

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    .line 1165
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mAppRootView:Lcom/android/camera/ui/MainActivityLayout;

    const v1, 0x7f0f009d

    .line 1166
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeTransitionRotateLayout:Lcom/android/camera/ui/RotateLayout;

    .line 1167
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeTransitionRotateLayout:Lcom/android/camera/ui/RotateLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1168
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mAppRootView:Lcom/android/camera/ui/MainActivityLayout;

    const v1, 0x7f0f009e

    .line 1169
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ModeTransitionView;

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    .line 1170
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mAppRootView:Lcom/android/camera/ui/MainActivityLayout;

    const v1, 0x7f0f00c4

    .line 1171
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewTransitionView;

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewTransitionView:Lcom/android/camera/ui/PreviewTransitionView;

    .line 1172
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1173
    .local v10, "res":Landroid/content/res/Resources;
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/ProductModelUtil;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f090032

    .line 1174
    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1175
    :goto_0
    iput v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarHeight:I

    .line 1176
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/SystemUIUtil;->isNaviHide(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mIsNaviHide:Z

    .line 1177
    new-instance v0, Lcom/android/camera/CaptureLayoutHelper;

    iget v1, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarHeight:I

    iget v2, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarHeight:I

    iget v3, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarHeight:I

    iget-boolean v4, p0, Lcom/android/camera/app/CameraAppUI;->mIsNaviHide:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    :goto_1
    move-object v5, p1

    .line 1179
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/CaptureLayoutHelper;-><init>(IIIILcom/android/camera/app/AppController;)V

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 1181
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 1182
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/camera/app/CameraAppUI$MyGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/app/CameraAppUI$MyGestureListener;-><init>(Lcom/android/camera/app/CameraAppUI;Lcom/android/camera/app/CameraAppUI$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1186
    :cond_0
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->enableQuickSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    if-eqz v0, :cond_1

    .line 1188
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeTransitionView;->setupExternalGestureDetector(Landroid/view/GestureDetector;)V

    .line 1191
    :cond_1
    const v0, 0x7f0f01eb

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mDefaultRoundedThumbnailView:Landroid/widget/ImageView;

    .line 1192
    const v0, 0x7f0f01ea

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/RoundedThumbnailView;

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    .line 1193
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/RoundedThumbnailView;->setClickable(Z)V

    .line 1194
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    new-instance v1, Lcom/android/camera/app/CameraAppUI$4;

    invoke-direct {v1, p0}, Lcom/android/camera/app/CameraAppUI$4;-><init>(Lcom/android/camera/app/CameraAppUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/RoundedThumbnailView;->setCallback(Lcom/android/camera/widget/RoundedThumbnailView$Callback;)V

    .line 1207
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mAppRootView:Lcom/android/camera/ui/MainActivityLayout;

    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MainActivityLayout;->setNonDecorWindowSizeChangedListener(Lcom/android/camera/app/CameraAppUI$NonDecorWindowSizeChangedListener;)V

    .line 1211
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mAppRootView:Lcom/android/camera/ui/MainActivityLayout;

    const v1, 0x7f0f011c

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mHDRBadgeLL:Landroid/widget/LinearLayout;

    .line 1212
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mAppRootView:Lcom/android/camera/ui/MainActivityLayout;

    const v1, 0x7f0f011d

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mHDRBadge:Lcom/android/camera/ui/RotateImageView;

    .line 1213
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mAppRootView:Lcom/android/camera/ui/MainActivityLayout;

    const v1, 0x7f0f020b

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSRBadgeLL:Landroid/widget/LinearLayout;

    .line 1214
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mAppRootView:Lcom/android/camera/ui/MainActivityLayout;

    const v1, 0x7f0f020c

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSRBadge:Lcom/android/camera/ui/RotateImageView;

    .line 1215
    const/4 v7, 0x0

    .line 1216
    .local v7, "mModeOptionsButtonsMarginTop":I
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/ProductModelUtil;->hasNotchFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1217
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/ProductModelUtil;->settingNotchEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1218
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v7, v0

    .line 1223
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mHDRBadgeLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 1225
    .local v8, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, v7

    .line 1226
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090201

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1227
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mHDRBadgeLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1229
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSRBadgeLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1231
    .local v9, "params2":Landroid/widget/FrameLayout$LayoutParams;
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, v7

    .line 1232
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090201

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1233
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSRBadgeLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1250
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0020

    .line 1251
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mMainFlashSupportedList:[I

    .line 1252
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001f

    .line 1253
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFrontFlashSupportedList:[I

    .line 1254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mSuppressCaptureIndicator:Z

    .line 1255
    return-void

    .line 1174
    .end local v7    # "mModeOptionsButtonsMarginTop":I
    .end local v8    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v9    # "params2":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    const v0, 0x7f090031

    .line 1175
    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_0

    .line 1179
    :cond_4
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v4

    goto/16 :goto_1

    .line 1219
    .restart local v7    # "mModeOptionsButtonsMarginTop":I
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/PreviewStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/app/CameraAppUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/camera/app/CameraAppUI;->mSwipeState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/app/CameraAppUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/android/camera/app/CameraAppUI;->mSwipeState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/app/CameraAppUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mIsCaptureIntent:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/app/CameraAppUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mSwipeEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/app/CameraAppUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mDisableAllUserInteractions:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/app/CameraAppUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/camera/app/CameraAppUI;->mSlop:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/camera/app/CameraAppUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/android/camera/app/CameraAppUI;->mSlop:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/camera/app/CameraAppUI;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;
    .param p1, "x1"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraAppUI;->onSwipeDetected(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/ModeTransitionView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/PreviewTransitionView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewTransitionView:Lcom/android/camera/ui/PreviewTransitionView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/app/CameraAppUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/camera/app/CameraAppUI;->mLastRotation:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/camera/app/CameraAppUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/android/camera/app/CameraAppUI;->mLastRotation:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/app/CameraAppUI;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/widget/ModeOptionsOverlay;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/operation/BottomBarOperation;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/MainActivityLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mAppRootView:Lcom/android/camera/ui/MainActivityLayout;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/camera/app/CameraAppUI;Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/widget/FilmstripLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;
    .param p1, "x1"    # Lcom/android/camera/widget/FilmstripLayout;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripLayout:Lcom/android/camera/widget/FilmstripLayout;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/FilmstripBottomPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripBottomControls:Lcom/android/camera/app/FilmstripBottomPanel;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/camera/app/CameraAppUI;Lcom/android/camera/app/FilmstripBottomPanel;)Lcom/android/camera/app/FilmstripBottomPanel;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;
    .param p1, "x1"    # Lcom/android/camera/app/FilmstripBottomPanel;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripBottomControls:Lcom/android/camera/app/FilmstripBottomPanel;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/filmstrip/FilmstripContentPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripPanel:Lcom/android/camera/filmstrip/FilmstripContentPanel;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/camera/app/CameraAppUI;Lcom/android/camera/filmstrip/FilmstripContentPanel;)Lcom/android/camera/filmstrip/FilmstripContentPanel;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;
    .param p1, "x1"    # Lcom/android/camera/filmstrip/FilmstripContentPanel;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripPanel:Lcom/android/camera/filmstrip/FilmstripContentPanel;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/GridLines;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mGridLines:Lcom/android/camera/ui/GridLines;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/camera/app/CameraAppUI;Lcom/android/camera/ui/GridLines;)Lcom/android/camera/ui/GridLines;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;
    .param p1, "x1"    # Lcom/android/camera/ui/GridLines;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI;->mGridLines:Lcom/android/camera/ui/GridLines;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mHDRBadge:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSRBadge:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$300()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/app/CameraAppUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mIsSwitchToOtherMode:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/camera/app/CameraAppUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/camera/app/CameraAppUI;->mIsSwitchToOtherMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/CustomTextureView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTextureView:Lcom/android/camera/ui/CustomTextureView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/TextureViewHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomCaptureLayoutOperation:Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/PreviewOverlay;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/focus/FocusRing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/app/CameraAppUI;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;ZZ)V
    .locals 13
    .param p1, "hardwareSpec"    # Lcom/android/camera/hardware/HardwareSpec;
    .param p2, "bottomBarSpec"    # Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .param p3, "skipScopeCheck"    # Z
    .param p4, "isNeedAnim"    # Z

    .prologue
    .line 3225
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3540
    :cond_0
    :goto_0
    return-void

    .line 3228
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/app/CameraAppUI;->mNeedHideModeCover:Z

    if-eqz v2, :cond_0

    .line 3230
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isModulePause:Z

    if-nez v2, :cond_0

    .line 3231
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3233
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    if-eqz v2, :cond_2

    .line 3234
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v2, p2}, Lcom/android/camera/ui/operation/BottomBarOperation;->setBottomBarUISpec(Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V

    .line 3237
    :cond_2
    invoke-interface {p1}, Lcom/android/camera/hardware/HardwareSpec;->isAutoHdrSupported()Z

    move-result v2

    iput-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableAutoHdr:Z

    .line 3239
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v1

    .line 3240
    .local v1, "buttonManager":Lcom/android/camera/ButtonManager;
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v12

    .line 3242
    .local v12, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-virtual {v1}, Lcom/android/camera/ButtonManager;->setToInitialState()V

    .line 3243
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    if-nez v2, :cond_e

    .line 3244
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    .line 3249
    :goto_1
    if-nez p3, :cond_3

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    .line 3250
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mCurrentModuleScope:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    .line 3251
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mCurrentCameraScope:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3255
    :cond_3
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mCurrentModuleScope:Ljava/lang/String;

    .line 3256
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mCurrentCameraScope:Ljava/lang/String;

    .line 3259
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraProvider;->getNumberOfCameras()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_11

    .line 3260
    invoke-interface {p1}, Lcom/android/camera/hardware/HardwareSpec;->isFrontCameraSupported()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3261
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideCamera:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v2}, Lcom/android/camera/ui/operation/BottomBarOperation;->isInIntentReview()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3263
    :cond_4
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    .line 3280
    :goto_2
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideHdr:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/camera/app/CameraAppUI;->mIsCaptureIntent:Z

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->showHDRButton()Z

    move-result v2

    if-nez v2, :cond_12

    .line 3282
    :cond_5
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    .line 3296
    :cond_6
    :goto_3
    const-string v2, "default_scope"

    const-string v3, "pref_flash_supported_back_camera"

    invoke-virtual {v12, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 3297
    .local v8, "flashBackCamera":Z
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v7

    .line 3298
    .local v7, "currentModuleIndex":I
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/android/camera/util/CameraUtil;->isVideoActionModule(ILandroid/content/Context;)Z

    move-result v11

    .line 3299
    .local v11, "isVideoModule":Z
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideFlash:Z

    if-nez v2, :cond_7

    if-nez v8, :cond_14

    .line 3301
    :cond_7
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    .line 3302
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    .line 3303
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    .line 3331
    :goto_4
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showSelfTimer:Z

    if-eqz v2, :cond_1d

    .line 3332
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/camera/ButtonManager;->initializeButton(ILcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V

    .line 3333
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSelfTimer:Z

    if-eqz v2, :cond_1c

    .line 3334
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->enableButton(I)V

    .line 3335
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3343
    :goto_5
    sget-boolean v2, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP:Z

    if-eqz v2, :cond_21

    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideCameraScreen:Z

    if-nez v2, :cond_21

    .line 3344
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/camera/ButtonManager;->initializeButton(ILcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V

    .line 3346
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCameraScreen:Z

    if-eqz v2, :cond_1e

    .line 3347
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->enableButton(I)V

    .line 3348
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3354
    :goto_6
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDualTwiceshot:Z

    if-eqz v2, :cond_20

    .line 3355
    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/camera/ButtonManager;->initializeButton(ILcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V

    .line 3356
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showDualTwiceshot:Z

    if-eqz v2, :cond_1f

    invoke-direct {p0}, Lcom/android/camera/app/CameraAppUI;->isDualSightHalfAndHalf()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3357
    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->enableButton(I)V

    .line 3358
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3376
    :goto_7
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isHAL3Enabled()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDaulCamSwitcher:Z

    if-nez v2, :cond_24

    .line 3377
    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/camera/ButtonManager;->initializeButton(ILcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V

    .line 3378
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDaulCamSwitcher:Z

    if-eqz v2, :cond_23

    .line 3379
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->enableButton(I)V

    .line 3380
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3388
    :goto_8
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    if-nez v2, :cond_26

    .line 3389
    const/16 v2, 0xf

    iget-object v3, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->soundCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/camera/ButtonManager;->initializeButton(ILcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V

    .line 3390
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSoundFocus:Z

    if-eqz v2, :cond_25

    .line 3391
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->enableButton(I)V

    .line 3392
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3400
    :goto_9
    sget-boolean v2, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$IndicatorBar;->SHOW_LIVE_BROADCAST:Z

    if-eqz v2, :cond_28

    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    if-nez v2, :cond_28

    .line 3401
    const/16 v2, 0x10

    iget-object v3, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->liveBroadcastCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/camera/ButtonManager;->initializeButton(ILcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V

    .line 3403
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableLiveBroadcast:Z

    if-eqz v2, :cond_27

    .line 3404
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->enableButton(I)V

    .line 3405
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3413
    :goto_a
    iget-boolean v2, p0, Lcom/android/camera/app/CameraAppUI;->mIsCaptureIntent:Z

    if-nez v2, :cond_2a

    .line 3414
    const/16 v2, 0x11

    new-instance v3, Lcom/android/camera/app/CameraAppUI$23;

    invoke-direct {v3, p0}, Lcom/android/camera/app/CameraAppUI$23;-><init>(Lcom/android/camera/app/CameraAppUI;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ButtonManager;->initializePushButton(ILandroid/view/View$OnClickListener;)V

    .line 3421
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSettings:Z

    if-eqz v2, :cond_29

    .line 3422
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->enableButton(I)V

    .line 3432
    :goto_b
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showMotion:Z

    if-eqz v2, :cond_2c

    .line 3433
    const/16 v2, 0x15

    iget-object v3, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->motionCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/camera/ButtonManager;->initializeButton(ILcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V

    .line 3435
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableMotion:Z

    if-nez v2, :cond_2b

    .line 3436
    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->disableButton(I)V

    .line 3446
    :goto_c
    sget-boolean v2, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$IndicatorBar;->SHOW_EFFECT:Z

    if-eqz v2, :cond_2e

    iget-boolean v2, p0, Lcom/android/camera/app/CameraAppUI;->mIsCaptureIntent:Z

    if-nez v2, :cond_2e

    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideEffect:Z

    if-nez v2, :cond_2e

    .line 3447
    const/16 v2, 0x13

    iget-object v3, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->effectCallback:Landroid/view/View$OnClickListener;

    const v4, 0x7f02017f

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/camera/ButtonManager;->initializePushButton(ILandroid/view/View$OnClickListener;IZ)V

    .line 3449
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableEffect:Z

    if-eqz v2, :cond_2d

    .line 3450
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->enableButton(I)V

    .line 3452
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 3453
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectChooseManager;->getIsLastModuelShowEffectPanel()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3454
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectChooseManager;->showEffectPanel()V

    .line 3457
    :cond_8
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    const/16 v3, 0x13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3466
    :goto_d
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqBeauty()Z

    move-result v2

    if-eqz v2, :cond_30

    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showBeauty:Z

    if-eqz v2, :cond_30

    .line 3467
    const/16 v2, 0x16

    iget-object v3, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->beautyCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/camera/ButtonManager;->initializeButton(ILcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V

    .line 3469
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableBeauty:Z

    if-eqz v2, :cond_2f

    .line 3470
    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->enableButton(I)V

    .line 3471
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3479
    :goto_e
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showSuperResolution:Z

    if-eqz v2, :cond_32

    .line 3480
    const/16 v2, 0x18

    iget-object v3, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->superResolutionCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/camera/ButtonManager;->initializeButton(ILcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V

    .line 3482
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSuperResolution:Z

    if-eqz v2, :cond_31

    .line 3483
    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->enableButton(I)V

    .line 3484
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3493
    :goto_f
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showLens:Z

    if-eqz v2, :cond_34

    .line 3494
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mLensClickListener:Landroid/view/View$OnClickListener;

    const v4, 0x7f0201bb

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/camera/ButtonManager;->initializePushButton(ILandroid/view/View$OnClickListener;IZ)V

    .line 3496
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableLens:Z

    if-eqz v2, :cond_33

    .line 3497
    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->enableButton(I)V

    .line 3498
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3507
    :goto_10
    iget-boolean v2, p0, Lcom/android/camera/app/CameraAppUI;->mIsCaptureIntent:Z

    if-eqz v2, :cond_c

    .line 3509
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showCancel:Z

    if-eqz v2, :cond_9

    .line 3514
    :cond_9
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showDone:Z

    if-eqz v2, :cond_a

    .line 3515
    const/4 v2, 0x7

    iget-object v3, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->doneCallback:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ButtonManager;->initializePushButton(ILandroid/view/View$OnClickListener;)V

    .line 3519
    :cond_a
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showRetake:Z

    if-eqz v2, :cond_b

    .line 3520
    const/16 v2, 0x8

    iget-object v3, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->retakeCallback:Landroid/view/View$OnClickListener;

    const v4, 0x7f020150

    const v5, 0x7f080221

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/ButtonManager;->initializePushButton(ILandroid/view/View$OnClickListener;IIZ)V

    .line 3526
    :cond_b
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showReview:Z

    if-eqz v2, :cond_c

    .line 3527
    const/16 v2, 0x9

    iget-object v3, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->reviewCallback:Landroid/view/View$OnClickListener;

    const v4, 0x7f0201e8

    const v5, 0x7f080222

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/ButtonManager;->initializePushButton(ILandroid/view/View$OnClickListener;IIZ)V

    .line 3534
    :cond_c
    sget-boolean v2, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lcom/android/camera/app/CameraAppUI;->mIsCaptureIntent:Z

    if-nez v2, :cond_d

    .line 3536
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    iget-boolean v3, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->movableShutterButton:Z

    invoke-virtual {v2, v3}, Lcom/android/camera/ShutterButton;->enableMovable(Z)V

    .line 3538
    :cond_d
    invoke-virtual {v1}, Lcom/android/camera/ButtonManager;->refreshVisibilityOfBtnAndSpace()V

    .line 3539
    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/camera/app/CameraAppUI;->mIsHideFlash:Z

    move/from16 v0, p4

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/camera/app/CameraAppUI;->animateTopButton(ZZZ)V

    goto/16 :goto_0

    .line 3246
    .end local v7    # "currentModuleIndex":I
    .end local v8    # "flashBackCamera":Z
    .end local v11    # "isVideoModule":Z
    :cond_e
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3247
    move/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/android/camera/ButtonManager;->setIsToggleBtnNeedAnim(Z)V

    goto/16 :goto_1

    .line 3265
    :cond_f
    const/4 v10, 0x5

    .line 3266
    .local v10, "hdrButtonId":I
    const/4 v2, 0x3

    iget-object v3, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 3268
    invoke-direct {p0, v10}, Lcom/android/camera/app/CameraAppUI;->getDisableButtonCallback(I)Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    .line 3266
    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/ButtonManager;->initializeButton(ILcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V

    .line 3269
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    if-eqz v2, :cond_10

    .line 3270
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->enableButton(I)V

    goto/16 :goto_2

    .line 3272
    :cond_10
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->disableButton(I)V

    goto/16 :goto_2

    .line 3277
    .end local v10    # "hdrButtonId":I
    :cond_11
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    goto/16 :goto_2

    .line 3284
    :cond_12
    const/4 v2, 0x5

    iget-object v3, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hdrCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    const/4 v4, 0x0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/ButtonManager;->initializeButton(ILcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V

    .line 3287
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3288
    invoke-interface {p1}, Lcom/android/camera/hardware/HardwareSpec;->isHdrSupported()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableHdr:Z

    if-eqz v2, :cond_13

    .line 3289
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->enableButton(I)V

    goto/16 :goto_3

    .line 3291
    :cond_13
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->disableButton(I)V

    goto/16 :goto_3

    .line 3305
    .restart local v7    # "currentModuleIndex":I
    .restart local v8    # "flashBackCamera":Z
    .restart local v11    # "isVideoModule":Z
    :cond_14
    sget-object v2, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFlashSupported = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/camera/hardware/HardwareSpec;->isFlashSupported()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3307
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableFlash:Z

    if-eqz v2, :cond_16

    .line 3308
    const/4 v9, 0x0

    .line 3316
    .local v9, "flash_btn_id":I
    :goto_11
    sget-object v2, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flash_btn_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3317
    iget-object v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->flashCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    invoke-virtual {v1, v9, v2, p1, p2}, Lcom/android/camera/ButtonManager;->initializeButton(ILcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V

    .line 3319
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3320
    invoke-interface {p1}, Lcom/android/camera/hardware/HardwareSpec;->isFlashSupported()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 3321
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableFlash:Z

    if-nez v2, :cond_15

    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableTorchFlash:Z

    if-nez v2, :cond_15

    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableHdrPlusFlash:Z

    if-eqz v2, :cond_19

    .line 3322
    :cond_15
    invoke-virtual {v1, v9}, Lcom/android/camera/ButtonManager;->enableButton(I)V

    goto/16 :goto_4

    .line 3309
    .end local v9    # "flash_btn_id":I
    :cond_16
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableTorchFlash:Z

    if-eqz v2, :cond_17

    .line 3310
    const/4 v9, 0x1

    .restart local v9    # "flash_btn_id":I
    goto :goto_11

    .line 3311
    .end local v9    # "flash_btn_id":I
    :cond_17
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableHdrPlusFlash:Z

    if-eqz v2, :cond_18

    .line 3312
    const/4 v9, 0x2

    .restart local v9    # "flash_btn_id":I
    goto :goto_11

    .line 3314
    .end local v9    # "flash_btn_id":I
    :cond_18
    const/4 v9, 0x0

    .restart local v9    # "flash_btn_id":I
    goto :goto_11

    .line 3324
    :cond_19
    if-eqz v11, :cond_1a

    const/4 v2, 0x1

    :goto_12
    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->disableButton(I)V

    goto/16 :goto_4

    :cond_1a
    const/4 v2, 0x0

    goto :goto_12

    .line 3327
    :cond_1b
    invoke-virtual {v1, v9}, Lcom/android/camera/ButtonManager;->disableButton(I)V

    goto/16 :goto_4

    .line 3337
    .end local v9    # "flash_btn_id":I
    :cond_1c
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->disableButton(I)V

    goto/16 :goto_5

    .line 3340
    :cond_1d
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    goto/16 :goto_5

    .line 3350
    :cond_1e
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->disableButton(I)V

    goto/16 :goto_6

    .line 3360
    :cond_1f
    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    goto/16 :goto_7

    .line 3363
    :cond_20
    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    goto/16 :goto_7

    .line 3367
    :cond_21
    iget-boolean v2, p2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideCameraScreen:Z

    if-eqz v2, :cond_22

    .line 3368
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    .line 3369
    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    goto/16 :goto_7

    .line 3371
    :cond_22
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->disableButton(I)V

    .line 3372
    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->disableButton(I)V

    goto/16 :goto_7

    .line 3382
    :cond_23
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->disableButton(I)V

    goto/16 :goto_8

    .line 3385
    :cond_24
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    goto/16 :goto_8

    .line 3394
    :cond_25
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->disableButton(I)V

    goto/16 :goto_9

    .line 3397
    :cond_26
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    goto/16 :goto_9

    .line 3407
    :cond_27
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->disableButton(I)V

    goto/16 :goto_a

    .line 3410
    :cond_28
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    goto/16 :goto_a

    .line 3424
    :cond_29
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->disableButton(I)V

    goto/16 :goto_b

    .line 3427
    :cond_2a
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    goto/16 :goto_b

    .line 3438
    :cond_2b
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    const/16 v3, 0x15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 3442
    :cond_2c
    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    goto/16 :goto_c

    .line 3460
    :cond_2d
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->disableButton(I)V

    goto/16 :goto_d

    .line 3463
    :cond_2e
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    goto/16 :goto_d

    .line 3473
    :cond_2f
    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->disableButton(I)V

    goto/16 :goto_e

    .line 3476
    :cond_30
    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    goto/16 :goto_e

    .line 3486
    :cond_31
    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->disableButton(I)V

    goto/16 :goto_f

    .line 3489
    :cond_32
    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    goto/16 :goto_f

    .line 3500
    :cond_33
    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->disableButton(I)V

    goto/16 :goto_10

    .line 3503
    :cond_34
    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    goto/16 :goto_10
.end method

.method private areBottomControlsUsed(Lcom/android/camera/module/ModuleController;)Z
    .locals 1
    .param p1, "module"    # Lcom/android/camera/module/ModuleController;

    .prologue
    .line 2881
    invoke-interface {p1}, Lcom/android/camera/module/ModuleController;->isUsingBottomBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2882
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->showBottomBar()V

    .line 2883
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 2884
    const/4 v0, 0x1

    .line 2888
    :goto_0
    return v0

    .line 2886
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->hideBottomBar()V

    .line 2887
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 2888
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDisableButtonCallback(I)Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1
    .param p1, "conflictingButton"    # I

    .prologue
    .line 3549
    new-instance v0, Lcom/android/camera/app/CameraAppUI$24;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/app/CameraAppUI$24;-><init>(Lcom/android/camera/app/CameraAppUI;I)V

    return-object v0
.end method

.method private getResourceString(I)Ljava/lang/String;
    .locals 2
    .param p1, "stringId"    # I

    .prologue
    .line 3564
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3567
    :goto_0
    return-object v1

    .line 3565
    :catch_0
    move-exception v0

    .line 3567
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, ""

    goto :goto_0
.end method

.method private hideModeCover()V
    .locals 4

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mHideCoverRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mAppRootView:Lcom/android/camera/ui/MainActivityLayout;

    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mHideCoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MainActivityLayout;->post(Ljava/lang/Runnable;)Z

    .line 1590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mHideCoverRunnable:Ljava/lang/Runnable;

    .line 1592
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeCoverState:I

    .line 1593
    iget-wide v0, p0, Lcom/android/camera/app/CameraAppUI;->mCoverHiddenTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/app/CameraAppUI;->mCoverHiddenTime:J

    .line 1596
    :cond_1
    return-void
.end method

.method private hideSwitchCameraCover()V
    .locals 2

    .prologue
    .line 3784
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSwitchAnimationView:Lcom/android/camera/ui/SwitchAnimationView;

    iget-boolean v1, p0, Lcom/android/camera/app/CameraAppUI;->mSwitchCameraPreviewArrived:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SwitchAnimationView;->hideSwitchCameraCover(Z)V

    .line 3785
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/BottomBarOperation;->enableSwitchMode()V

    .line 3786
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/ButtonManager;->enableButtonClick(I)V

    .line 3787
    return-void
.end method

.method private initDisplayListener()V
    .locals 3

    .prologue
    .line 1399
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_DISPLAY_LISTENER:Z

    if-eqz v0, :cond_0

    .line 1400
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/app/CameraAppUI;->mLastRotation:I

    .line 1402
    new-instance v0, Lcom/android/camera/app/CameraAppUI$8;

    invoke-direct {v0, p0}, Lcom/android/camera/app/CameraAppUI$8;-><init>(Lcom/android/camera/app/CameraAppUI;)V

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1433
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/AndroidServices;->provideDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    .line 1434
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1436
    :cond_0
    return-void
.end method

.method private isDualSightHalfAndHalf()Z
    .locals 5

    .prologue
    .line 3214
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3215
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_camera_screen_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3216
    .local v0, "currentValue":I
    const v2, 0x7f0803c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 3217
    const/4 v2, 0x1

    .line 3219
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onPreviewListenerChanged()V
    .locals 5

    .prologue
    .line 1780
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 1781
    invoke-interface {v3}, Lcom/android/camera/ui/PreviewStatusListener;->getGestureListener()Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v0

    .line 1782
    .local v0, "gestureListener":Landroid/view/GestureDetector$OnGestureListener;
    if-eqz v0, :cond_0

    .line 1783
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v3, v0}, Lcom/android/camera/ui/PreviewOverlay;->setGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 1786
    :cond_0
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 1787
    invoke-interface {v3}, Lcom/android/camera/ui/PreviewStatusListener;->getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-result-object v1

    .line 1788
    .local v1, "scaleGestureListener":Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    if-eqz v1, :cond_1

    .line 1789
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/PreviewOverlay;->setScaleGestureListener(Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 1792
    :cond_1
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v3}, Lcom/android/camera/ui/PreviewStatusListener;->getTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v2

    .line 1793
    .local v2, "touchListener":Landroid/view/View$OnTouchListener;
    if-eqz v2, :cond_2

    .line 1794
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/PreviewOverlay;->setTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1797
    :cond_2
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget-object v4, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v4}, Lcom/android/camera/ui/PreviewStatusListener;->useModuleListenerFirst()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/PreviewOverlay;->setUseModuleListenerFirst(Z)V

    .line 1799
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    iget-object v4, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 1800
    invoke-interface {v4}, Lcom/android/camera/ui/PreviewStatusListener;->shouldAutoAdjustTransformMatrixOnLayout()Z

    move-result v4

    .line 1799
    invoke-virtual {v3, v4}, Lcom/android/camera/TextureViewHelper;->setAutoAdjustTransform(Z)V

    .line 1801
    return-void
.end method

.method private onSwipeDetected(I)V
    .locals 2
    .param p1, "swipeState"    # I

    .prologue
    const/4 v1, 0x3

    .line 1445
    if-eq p1, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->onSwipeDetected(I)V

    .line 1459
    :cond_1
    :goto_0
    return-void

    .line 1449
    :cond_2
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripLayout:Lcom/android/camera/widget/FilmstripLayout;

    if-eqz v0, :cond_3

    if-ne p1, v1, :cond_3

    .line 1456
    :cond_3
    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1457
    :cond_4
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->notifySwipeStateChanged(I)V

    goto :goto_0
.end method

.method private showModeCoverUntilPreviewReady(Z)V
    .locals 4
    .param p1, "isFirstLaunch"    # Z

    .prologue
    .line 1561
    if-nez p1, :cond_0

    .line 1562
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v2

    .line 1563
    .local v2, "modeId":I
    const v0, 0x7f0e001c

    .line 1564
    .local v0, "colorId":I
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/util/CameraUtil;->getCameraModeCoverIconResId(ILandroid/content/Context;)I

    move-result v1

    .line 1565
    .local v1, "iconId":I
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mModeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/ui/ModeTransitionView;->setupModeCover(II)V

    .line 1567
    .end local v0    # "colorId":I
    .end local v1    # "iconId":I
    .end local v2    # "modeId":I
    :cond_0
    new-instance v3, Lcom/android/camera/app/CameraAppUI$9;

    invoke-direct {v3, p0}, Lcom/android/camera/app/CameraAppUI$9;-><init>(Lcom/android/camera/app/CameraAppUI;)V

    iput-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mHideCoverRunnable:Ljava/lang/Runnable;

    .line 1577
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/camera/app/CameraAppUI;->mModeCoverState:I

    .line 1578
    return-void
.end method

.method private showShimmyDelayed()V
    .locals 0

    .prologue
    .line 1585
    return-void
.end method

.method private updateModeSpecificUIColors()V
    .locals 1

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/app/CameraAppUI;->setBottomBarColorsForModeIndex(I)V

    .line 2210
    return-void
.end method


# virtual methods
.method public addPreviewAreaChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/camera/TextureViewHelper;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1923
    return-void
.end method

.method public addShutterListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    .prologue
    .line 3078
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->addOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 3079
    return-void
.end method

.method public addVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;

    .prologue
    .line 3089
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->addVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V

    .line 3090
    return-void
.end method

.method public animateBottomBarToFullSize(I)V
    .locals 1
    .param p1, "shutterIconId"    # I

    .prologue
    .line 2947
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->animateToFullSize(I)V

    .line 2948
    return-void
.end method

.method public animateBottomBarToPanoStop(IZ)V
    .locals 1
    .param p1, "shutterIconId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 2942
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/operation/BottomBarOperation;->animateToPanoStop(IZ)V

    .line 2943
    return-void
.end method

.method public animateBottomBarToVideoStop(I)V
    .locals 1
    .param p1, "shutterIconId"    # I

    .prologue
    .line 2930
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->animateToVideoStop(I)V

    .line 2931
    return-void
.end method

.method public animateTopButton(ZZZ)V
    .locals 2
    .param p1, "needAnim"    # Z
    .param p2, "hidden"    # Z
    .param p3, "isHideFlash"    # Z

    .prologue
    .line 3707
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 3708
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/camera/app/CameraAppUI;->applyMultiExpandViewsClickable(Z)V

    .line 3709
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 3710
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/camera/ButtonManager;->hideButtonWithAnim(Ljava/util/List;ZZ)V

    .line 3712
    :cond_0
    return-void

    .line 3708
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;Z)V
    .locals 1
    .param p1, "hardwareSpec"    # Lcom/android/camera/hardware/HardwareSpec;
    .param p2, "bottomBarSpec"    # Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .param p3, "isNeedAnim"    # Z

    .prologue
    .line 3210
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/camera/app/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;ZZ)V

    .line 3211
    return-void
.end method

.method public applyMultiExpandViewsClickable(Z)V
    .locals 4
    .param p1, "isClickable"    # Z

    .prologue
    .line 3714
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v1

    .line 3715
    .local v1, "buttonManager":Lcom/android/camera/ButtonManager;
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    if-nez v3, :cond_1

    .line 3729
    :cond_0
    return-void

    .line 3716
    :cond_1
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 3717
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3718
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mIconList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3720
    .local v0, "buttonId":I
    invoke-virtual {v1, v0}, Lcom/android/camera/ButtonManager;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3721
    if-eqz p1, :cond_3

    .line 3722
    invoke-virtual {v1, v0}, Lcom/android/camera/ButtonManager;->enableButtonClick(I)V

    .line 3717
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3724
    :cond_3
    invoke-virtual {v1, v0}, Lcom/android/camera/ButtonManager;->disableButtonClick(I)V

    goto :goto_1
.end method

.method public applyPowerState()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1862
    iget-object v10, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v6

    .line 1863
    .local v6, "moduleController":Lcom/android/camera/module/ModuleController;
    invoke-interface {v6}, Lcom/android/camera/module/ModuleController;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v4

    .line 1864
    .local v4, "hardwareSpec":Lcom/android/camera/hardware/HardwareSpec;
    invoke-interface {v6}, Lcom/android/camera/module/ModuleController;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    move-result-object v0

    .line 1866
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    .line 1909
    :cond_0
    :goto_0
    return-void

    .line 1870
    :cond_1
    iget-object v10, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v1

    .line 1871
    .local v1, "buttonManager":Lcom/android/camera/ButtonManager;
    iget-object v10, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v7

    .line 1872
    .local v7, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-virtual {v1}, Lcom/android/camera/ButtonManager;->setToInitialState()V

    .line 1873
    iget-object v10, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v2

    .line 1874
    .local v2, "currentModuleIndex":I
    iget-object v10, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/android/camera/util/CameraUtil;->isVideoActionModule(ILandroid/content/Context;)Z

    move-result v5

    .line 1875
    .local v5, "isVideoModule":Z
    const-string v10, "default_scope"

    const-string v11, "pref_flash_supported_back_camera"

    invoke-virtual {v7, v10, v11}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1877
    .local v3, "flashBackCamera":Z
    iget-boolean v10, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideFlash:Z

    if-nez v10, :cond_2

    if-nez v3, :cond_3

    .line 1880
    :cond_2
    invoke-virtual {v1, v9}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    .line 1881
    invoke-virtual {v1, v8}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    .line 1908
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->syncModeOptionIndicators()V

    goto :goto_0

    .line 1883
    :cond_3
    invoke-interface {v4}, Lcom/android/camera/hardware/HardwareSpec;->isFlashSupported()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1884
    iget-boolean v10, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableFlash:Z

    if-eqz v10, :cond_4

    .line 1885
    iget-object v8, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->flashCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    invoke-virtual {v1, v9, v8, v4, v0}, Lcom/android/camera/ButtonManager;->initializeButton(ILcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V

    goto :goto_1

    .line 1887
    :cond_4
    iget-boolean v10, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableTorchFlash:Z

    if-eqz v10, :cond_5

    .line 1888
    iget-object v9, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->flashCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    invoke-virtual {v1, v8, v9, v4, v0}, Lcom/android/camera/ButtonManager;->initializeButton(ILcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V

    goto :goto_1

    .line 1890
    :cond_5
    iget-boolean v10, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableHdrPlusFlash:Z

    if-eqz v10, :cond_6

    .line 1891
    const/4 v8, 0x2

    iget-object v9, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->flashCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    invoke-virtual {v1, v8, v9, v4, v0}, Lcom/android/camera/ButtonManager;->initializeButton(ILcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V

    goto :goto_1

    .line 1897
    :cond_6
    invoke-virtual {v1, v9}, Lcom/android/camera/ButtonManager;->showButton(I)V

    .line 1898
    if-eqz v5, :cond_7

    :goto_2
    invoke-virtual {v1, v8}, Lcom/android/camera/ButtonManager;->disableButton(I)V

    goto :goto_1

    :cond_7
    move v8, v9

    goto :goto_2

    .line 1904
    :cond_8
    invoke-virtual {v1, v9}, Lcom/android/camera/ButtonManager;->showButton(I)V

    .line 1905
    if-eqz v5, :cond_9

    :goto_3
    invoke-virtual {v1, v8}, Lcom/android/camera/ButtonManager;->disableButton(I)V

    goto :goto_1

    :cond_9
    move v8, v9

    goto :goto_3
.end method

.method public applyStateWhenRecordingStateChange()V
    .locals 0

    .prologue
    .line 3628
    return-void
.end method

.method public buildModeList(Ljava/util/List;ZI)V
    .locals 2
    .param p2, "isSecureCamera"    # Z
    .param p3, "currentModeIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 3924
    .local p1, "modeIndexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput p3, p0, Lcom/android/camera/app/CameraAppUI;->mPreModeIndex:I

    .line 3925
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    iget-boolean v1, p0, Lcom/android/camera/app/CameraAppUI;->mIsCaptureIntent:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->buildModeList(Ljava/util/List;ZIZ)V

    .line 3927
    return-void
.end method

.method public cancelPostCaptureAnimation()V
    .locals 0

    .prologue
    .line 2435
    return-void
.end method

.method public cancelPreCaptureAnimation()V
    .locals 0

    .prologue
    .line 2429
    return-void
.end method

.method public changeBottomBarBackgroundResource(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 3616
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->setBackgroundResource(I)V

    .line 3617
    return-void
.end method

.method public changePIPModeOptions(Z)V
    .locals 3
    .param p1, "ifVisible"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2728
    if-eqz p1, :cond_0

    .line 2729
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 2730
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ModeOptionsOverlay;->setVisibility(I)V

    .line 2731
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->setOperationVisible(III)V

    .line 2736
    :goto_0
    return-void

    .line 2733
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    invoke-virtual {v0, v2}, Lcom/android/camera/widget/ModeOptionsOverlay;->setVisibility(I)V

    .line 2734
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, v2, v2, v2}, Lcom/android/camera/ui/operation/BottomBarOperation;->setOperationVisible(III)V

    goto :goto_0
.end method

.method public changePanoModeOptions(Z)V
    .locals 3
    .param p1, "ifVisible"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 2717
    if-eqz p1, :cond_0

    .line 2718
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 2719
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    invoke-virtual {v0, v2}, Lcom/android/camera/widget/ModeOptionsOverlay;->setVisibility(I)V

    .line 2720
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/camera/ui/operation/BottomBarOperation;->setOperationVisible(III)V

    .line 2725
    :goto_0
    return-void

    .line 2722
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ModeOptionsOverlay;->setVisibility(I)V

    .line 2723
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->setOperationVisible(III)V

    goto :goto_0
.end method

.method public changeWatermarkModeOptions(ZZ)V
    .locals 4
    .param p1, "ifVisible"    # Z
    .param p2, "isOverlay"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2739
    if-eqz p1, :cond_0

    .line 2740
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 2741
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ModeOptionsOverlay;->setVisibility(I)V

    .line 2742
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->setOperationVisible(III)V

    .line 2743
    invoke-virtual {p0, v3}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 2744
    invoke-virtual {p0, v3}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 2745
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 2746
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->notifyModeListState(Z)V

    .line 2757
    :goto_0
    return-void

    .line 2748
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    invoke-virtual {v0, v2}, Lcom/android/camera/widget/ModeOptionsOverlay;->setVisibility(I)V

    .line 2749
    if-eqz p2, :cond_1

    .line 2750
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, v2, v2, v2}, Lcom/android/camera/ui/operation/BottomBarOperation;->setOperationVisible(III)V

    .line 2752
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 2753
    invoke-virtual {p0, v1}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 2754
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 2755
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->notifyModeListState(Z)V

    goto :goto_0
.end method

.method public clearClingForViewer(I)V
    .locals 2
    .param p1, "viewerType"    # I

    .prologue
    .line 1358
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripBottomControls:Lcom/android/camera/app/FilmstripBottomPanel;

    invoke-virtual {v1, p1}, Lcom/android/camera/app/FilmstripBottomPanel;->getClingForViewer(I)Lcom/android/camera/widget/Cling;

    move-result-object v0

    .line 1359
    .local v0, "clingToBeRemoved":Lcom/android/camera/widget/Cling;
    if-nez v0, :cond_0

    .line 1366
    :goto_0
    return-void

    .line 1363
    :cond_0
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripBottomControls:Lcom/android/camera/app/FilmstripBottomPanel;

    invoke-virtual {v1, p1}, Lcom/android/camera/app/FilmstripBottomPanel;->clearClingForViewer(I)V

    .line 1364
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/Cling;->setVisibility(I)V

    .line 1365
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mAppRootView:Lcom/android/camera/ui/MainActivityLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/MainActivityLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public clearModuleUI()V
    .locals 2

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModuleUI:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2031
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModuleUI:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2034
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mProModuleUI:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 2035
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mProModuleUI:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2038
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/app/CameraAppUI;->removeShutterListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 2039
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTutorialsPlaceHolderWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2040
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTutorialsPlaceHolderWrapper:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2042
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 2043
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 2044
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mUseModuleListenerFirst:Z

    .line 2045
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->reset()V

    .line 2047
    sget-object v0, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "mFocusRing.stopFocusAnimations()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2048
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->stopFocusAnimations()V

    .line 2049
    return-void
.end method

.method public clearPreviewTransform()V
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    invoke-virtual {v0}, Lcom/android/camera/TextureViewHelper;->clearTransform()V

    .line 1006
    return-void
.end method

.method public disableModeOptions()V
    .locals 2

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ModeOptionsOverlay;->setToggleClickable(Z)V

    .line 2162
    return-void
.end method

.method public enableModeOptions()V
    .locals 2

    .prologue
    .line 2152
    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mDisableAllUserInteractions:Z

    if-nez v0, :cond_0

    .line 2153
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ModeOptionsOverlay;->setToggleClickable(Z)V

    .line 2155
    :cond_0
    return-void
.end method

.method public fakefreezeScreenUntilPreviewReady()V
    .locals 2

    .prologue
    .line 1292
    sget-object v0, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "fakefreezeScreenUntilPreviewReady"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1293
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeCoverState:I

    .line 1294
    return-void
.end method

.method public forceHidePreviewOverlay(Z)V
    .locals 1
    .param p1, "forceHide"    # Z

    .prologue
    .line 2826
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_0

    .line 2827
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PreviewOverlay;->setForceToHide(Z)V

    .line 2829
    :cond_0
    return-void
.end method

.method public freezeScreenUntilDialogDismiss()V
    .locals 2

    .prologue
    .line 1279
    sget-object v0, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "freezeScreenUntilDialogDismiss"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1280
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mCameraModuleScreenShotProvider:Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;

    .line 1281
    invoke-interface {v1}, Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;->getEmptyScreenShot()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1280
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeTransitionView;->setupModeCover(Landroid/graphics/Bitmap;)V

    .line 1282
    new-instance v0, Lcom/android/camera/app/CameraAppUI$6;

    invoke-direct {v0, p0}, Lcom/android/camera/app/CameraAppUI$6;-><init>(Lcom/android/camera/app/CameraAppUI;)V

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mHideCoverRunnable:Ljava/lang/Runnable;

    .line 1288
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeCoverState:I

    .line 1289
    return-void
.end method

.method public freezeScreenUntilPreviewReady(Z)V
    .locals 4
    .param p1, "needBlur"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1263
    sget-object v0, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "freezeScreenUntilPreviewReady"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1264
    invoke-static {}, Lcom/android/camera/cpuboost/CpuBooster;->instance()Lcom/android/camera/cpuboost/BoostEngine;

    move-result-object v0

    const/16 v2, 0x7d0

    invoke-virtual {v0, v2}, Lcom/android/camera/cpuboost/BoostEngine;->boostInTime(I)Z

    .line 1265
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mModeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mCameraModuleScreenShotProvider:Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 1266
    :goto_0
    invoke-interface {v3, v0, p1}, Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;->getScreenShot(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1265
    invoke-virtual {v2, v0}, Lcom/android/camera/ui/ModeTransitionView;->setupModeCover(Landroid/graphics/Bitmap;)V

    .line 1268
    sget-object v0, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "freezeScreenUntilPreviewReady done"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1269
    new-instance v0, Lcom/android/camera/app/CameraAppUI$5;

    invoke-direct {v0, p0}, Lcom/android/camera/app/CameraAppUI$5;-><init>(Lcom/android/camera/app/CameraAppUI;)V

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mHideCoverRunnable:Ljava/lang/Runnable;

    .line 1275
    iput v1, p0, Lcom/android/camera/app/CameraAppUI;->mModeCoverState:I

    .line 1276
    return-void

    :cond_0
    move v0, v1

    .line 1265
    goto :goto_0
.end method

.method public getBitMapFromPreview(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/camera/TextureViewHelper;->getBitMapFromPreview(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBlurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    .line 981
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 982
    :cond_0
    const/4 p1, 0x0

    .line 992
    .end local p1    # "original":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 983
    .restart local p1    # "original":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v4, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v2

    .line 984
    .local v2, "renderScript":Landroid/renderscript/RenderScript;
    invoke-static {v2, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 985
    .local v0, "input":Landroid/renderscript/Allocation;
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 986
    .local v1, "output":Landroid/renderscript/Allocation;
    invoke-static {v2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v3

    .line 987
    .local v3, "scriptIntrinsicBlur":Landroid/renderscript/ScriptIntrinsicBlur;
    int-to-float v4, p2

    invoke-virtual {v3, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 988
    invoke-virtual {v3, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 989
    invoke-virtual {v3, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 990
    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 991
    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->destroy()V

    goto :goto_0
.end method

.method public getBottomBarHeightByDUT()I
    .locals 1

    .prologue
    .line 3764
    iget v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarHeight:I

    return v0
.end method

.method public getCaptureLayoutHelper()Lcom/android/camera/CaptureLayoutHelper;
    .locals 1

    .prologue
    .line 3760
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    return-object v0
.end method

.method public getCenterOfShutterButton(Z)Landroid/graphics/Point;
    .locals 5
    .param p1, "isIncludeWidth"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3732
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-nez v1, :cond_0

    .line 3733
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 3738
    :goto_0
    return-object v1

    .line 3735
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 3736
    .local v0, "result":[I
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/camera/ShutterButton;->getLocationOnScreen([I)V

    .line 3737
    if-eqz p1, :cond_1

    aget v1, v0, v3

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v2}, Lcom/android/camera/ShutterButton;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_1
    aput v1, v0, v3

    .line 3738
    new-instance v1, Landroid/graphics/Point;

    aget v2, v0, v4

    aget v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    .line 3737
    :cond_1
    aget v1, v0, v3

    goto :goto_1
.end method

.method public getCoverHiddenTime()J
    .locals 2

    .prologue
    .line 998
    iget-wide v0, p0, Lcom/android/camera/app/CameraAppUI;->mCoverHiddenTime:J

    return-wide v0
.end method

.method public getCurrentModeIndex()I
    .locals 1

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    return v0
.end method

.method public getFilmstripBottomControls()Lcom/android/camera/app/CameraAppUI$BottomPanel;
    .locals 1

    .prologue
    .line 2446
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripBottomControls:Lcom/android/camera/app/FilmstripBottomPanel;

    return-object v0
.end method

.method public getFilmstripContentPanel()Lcom/android/camera/filmstrip/FilmstripContentPanel;
    .locals 1

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripPanel:Lcom/android/camera/filmstrip/FilmstripContentPanel;

    return-object v0
.end method

.method public getFilmstripVisibility()I
    .locals 1

    .prologue
    .line 3612
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripLayout:Lcom/android/camera/widget/FilmstripLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripLayout:Lcom/android/camera/widget/FilmstripLayout;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripLayout;->getVisibility()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getFullscreenRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    invoke-virtual {v0}, Lcom/android/camera/TextureViewHelper;->getFullscreenRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getGridLinesCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 2674
    new-instance v0, Lcom/android/camera/app/CameraAppUI$16;

    invoke-direct {v0, p0}, Lcom/android/camera/app/CameraAppUI$16;-><init>(Lcom/android/camera/app/CameraAppUI;)V

    return-object v0
.end method

.method public getInteger(I)I
    .locals 1
    .param p1, "modeid"    # I

    .prologue
    .line 3842
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getIsHideFlash()Z
    .locals 1

    .prologue
    .line 3703
    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mIsHideFlash:Z

    return v0
.end method

.method public getModuleRootView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getOriPreviewFrame(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "downSampleFactor"    # I

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mCameraModuleScreenShotProvider:Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;

    invoke-interface {v0, p1}, Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;->getOriPreviewFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewArea()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 2235
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewFrame(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "downSampleFactor"    # I

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mCameraModuleScreenShotProvider:Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;

    invoke-interface {v0, p1}, Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;->getPreviewFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    invoke-virtual {v0}, Lcom/android/camera/TextureViewHelper;->getPreviewArea()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTextureView:Lcom/android/camera/ui/CustomTextureView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CustomTextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .prologue
    .line 2487
    iget v0, p0, Lcom/android/camera/app/CameraAppUI;->mSurfaceHeight:I

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 2470
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSurface:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 2471
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTextureView:Lcom/android/camera/ui/CustomTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CustomTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 2473
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSurface:Landroid/graphics/SurfaceTexture;

    goto :goto_0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .prologue
    .line 2480
    iget v0, p0, Lcom/android/camera/app/CameraAppUI;->mSurfaceWidth:I

    return v0
.end method

.method public hideAccessibilityZoomUI()V
    .locals 0

    .prologue
    .line 1553
    return-void
.end method

.method public hideBottomBar()V
    .locals 2

    .prologue
    .line 2903
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->setVisibility(I)V

    .line 2904
    return-void
.end method

.method public hideBottomControls()V
    .locals 1

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripBottomControls:Lcom/android/camera/app/FilmstripBottomPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripBottomControls:Lcom/android/camera/app/FilmstripBottomPanel;

    invoke-virtual {v0}, Lcom/android/camera/app/FilmstripBottomPanel;->hide()V

    .line 2455
    :cond_0
    return-void
.end method

.method public hideCaptureIndicator()V
    .locals 2

    .prologue
    .line 2314
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView;->hideThumbnail()V

    .line 2315
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/RoundedThumbnailView;->setClickable(Z)V

    .line 2316
    return-void
.end method

.method public hideDefaultThumbnail()V
    .locals 2

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mDefaultRoundedThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2306
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mDefaultRoundedThumbnailView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2308
    :cond_0
    return-void
.end method

.method public hideFilmstrip()V
    .locals 1

    .prologue
    .line 3608
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripLayout:Lcom/android/camera/widget/FilmstripLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripLayout:Lcom/android/camera/widget/FilmstripLayout;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripLayout;->hideFilmstrip()V

    .line 3609
    :cond_0
    return-void
.end method

.method public hideGridLines()V
    .locals 2

    .prologue
    .line 2664
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mGridLines:Lcom/android/camera/ui/GridLines;

    if-eqz v0, :cond_0

    .line 2665
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mGridLines:Lcom/android/camera/ui/GridLines;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GridLines;->setVisibility(I)V

    .line 2667
    :cond_0
    return-void
.end method

.method public hideIndicatorAnim(I)V
    .locals 17
    .param p1, "modeIndex"    # I

    .prologue
    .line 3668
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/app/CameraAppUI;->mPreModeIndex:I

    invoke-interface {v14, v15}, Lcom/android/camera/app/AppController;->transformModuleIndexIfNeed(I)I

    move-result v10

    .line 3669
    .local v10, "preModeIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    move/from16 v0, p1

    invoke-interface {v14, v0}, Lcom/android/camera/app/AppController;->transformModuleIndexIfNeed(I)I

    move-result v3

    .line 3670
    .local v3, "curModeIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/CameraAppUI;->mMainFlashSupportedList:[I

    aget v9, v14, v10

    .line 3671
    .local v9, "preFlashStatus":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/CameraAppUI;->mMainFlashSupportedList:[I

    aget v2, v14, v3

    .line 3672
    .local v2, "curFlashStatus":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/app/CameraAppUI;->isBackFacingCamera()Z

    move-result v14

    if-nez v14, :cond_0

    .line 3673
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/CameraAppUI;->mFrontFlashSupportedList:[I

    aget v9, v14, v10

    .line 3674
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/CameraAppUI;->mFrontFlashSupportedList:[I

    aget v2, v14, v3

    .line 3676
    :cond_0
    if-eq v9, v2, :cond_6

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/camera/app/CameraAppUI;->mIsHideFlash:Z

    .line 3677
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/app/CameraAppUI;->mPreModeIndex:I

    .line 3678
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v14}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b000f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 3679
    .local v8, "photoMode":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v14}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b0017

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 3680
    .local v13, "videoMode":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/app/CameraAppUI;->mPreModeIndex:I

    if-ne v14, v8, :cond_1

    move/from16 v0, p1

    if-eq v0, v13, :cond_2

    :cond_1
    move/from16 v0, p1

    if-ne v0, v8, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/app/CameraAppUI;->mPreModeIndex:I

    if-ne v14, v13, :cond_7

    :cond_2
    const/4 v4, 0x1

    .line 3681
    .local v4, "isFromPhotoToVideo":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v14}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v11

    .line 3682
    .local v11, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v14}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v14

    const-string v15, "pref_camera_flashmode_key"

    invoke-virtual {v11, v14, v15}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3683
    .local v7, "photoFlashMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v14}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v14

    const-string v15, "pref_camera_video_flashmode_key"

    invoke-virtual {v11, v14, v15}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3684
    .local v12, "videoFlashMode":Ljava/lang/String;
    invoke-static {v11}, Lcom/android/camera/settings/Keys;->isHdrOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v5

    .line 3685
    .local v5, "isHdrOn":Z
    if-nez v5, :cond_8

    const/4 v6, 0x1

    .line 3687
    .local v6, "isPhotoModuleSupportedFlash":Z
    :goto_2
    if-eqz v4, :cond_4

    .line 3688
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "on"

    .line 3689
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    const-string v14, "torch"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 3690
    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/camera/app/CameraAppUI;->mIsHideFlash:Z

    .line 3696
    :cond_4
    :goto_3
    if-nez v6, :cond_5

    .line 3697
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/camera/app/CameraAppUI;->mIsHideFlash:Z

    .line 3699
    :cond_5
    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/app/CameraAppUI;->mIsHideFlash:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/camera/app/CameraAppUI;->animateTopButton(ZZZ)V

    .line 3700
    return-void

    .line 3676
    .end local v4    # "isFromPhotoToVideo":Z
    .end local v5    # "isHdrOn":Z
    .end local v6    # "isPhotoModuleSupportedFlash":Z
    .end local v7    # "photoFlashMode":Ljava/lang/String;
    .end local v8    # "photoMode":I
    .end local v11    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    .end local v12    # "videoFlashMode":Ljava/lang/String;
    .end local v13    # "videoMode":I
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 3680
    .restart local v8    # "photoMode":I
    .restart local v13    # "videoMode":I
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 3685
    .restart local v4    # "isFromPhotoToVideo":Z
    .restart local v5    # "isHdrOn":Z
    .restart local v7    # "photoFlashMode":Ljava/lang/String;
    .restart local v11    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    .restart local v12    # "videoFlashMode":Ljava/lang/String;
    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 3692
    .restart local v6    # "isPhotoModuleSupportedFlash":Z
    :cond_9
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/camera/app/CameraAppUI;->mIsHideFlash:Z

    goto :goto_3
.end method

.method public hideModeBlurCover()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3909
    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mShowModeBlurCover:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mNeedHideModeCover:Z

    if-eqz v0, :cond_1

    .line 3910
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mEndSwitchToOtherModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3911
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mEndSwitchToOtherModeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3912
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mEndSwitchToOtherModeRunnable:Ljava/lang/Runnable;

    .line 3914
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mShowModeBlurCover:Z

    .line 3915
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/ButtonManager;->enableButtonClick(I)V

    .line 3916
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/BottomBarOperation;->enableSwitchMode()V

    .line 3917
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/BottomBarOperation;->switchModeDone()V

    .line 3918
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSwitchAnimationView:Lcom/android/camera/ui/SwitchAnimationView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SwitchAnimationView;->hideModeBlurCover()V

    .line 3919
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ShutterButton;->enableTouch(Z)V

    .line 3920
    invoke-virtual {p0, v2}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 3922
    :cond_1
    return-void
.end method

.method public hideModeOptions()V
    .locals 1

    .prologue
    .line 2813
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions(Z)V

    .line 2814
    return-void
.end method

.method public hideModeOptions(Z)V
    .locals 2
    .param p1, "keepModeOptions"    # Z

    .prologue
    const/4 v1, 0x4

    .line 2817
    if-nez p1, :cond_0

    .line 2818
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ModeOptionsOverlay;->setVisibility(I)V

    .line 2819
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2821
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->setOperationVisible(I)V

    .line 2822
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->hideDefaultThumbnail()V

    .line 2823
    return-void
.end method

.method public hideModeOptionsExpandButtons()V
    .locals 4

    .prologue
    .line 2847
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    if-nez v2, :cond_1

    .line 2858
    :cond_0
    return-void

    .line 2848
    :cond_1
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2849
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 2851
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2852
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2853
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 2854
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2855
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/ButtonManager;->setMainBarByModeOverlay(Z)V

    .line 2851
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hidePreviewOverlay()V
    .locals 2

    .prologue
    .line 2832
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_0

    .line 2833
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewOverlay;->setVisibility(I)V

    .line 2835
    :cond_0
    return-void
.end method

.method public hideVideoSnapShotButton()V
    .locals 1

    .prologue
    .line 3097
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/BottomBarOperation;->hideVideoSnapShotButton()V

    .line 3098
    return-void
.end method

.method public isBackFacingCamera()Z
    .locals 4

    .prologue
    .line 2228
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "PhotoModule"

    .line 2229
    invoke-static {v2}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_id_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2230
    .local v0, "cameraId":I
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isHAL3Enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v1

    invoke-static {v0}, Lcom/android/camera/device/CameraId;->fromLegacyId(I)Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/app/OneCameraProvider;->isBackFacingCamera(Lcom/android/camera/device/CameraId;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/app/CameraProvider;->isBackFacingCamera(I)Z

    move-result v1

    goto :goto_0
.end method

.method public isInIntentReview()Z
    .locals 1

    .prologue
    .line 3183
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/BottomBarOperation;->isInIntentReview()Z

    move-result v0

    return v0
.end method

.method public isModeOptionsVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2760
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    if-nez v1, :cond_1

    .line 2763
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    invoke-virtual {v1}, Lcom/android/camera/widget/ModeOptionsOverlay;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isModeTransiting()Z
    .locals 1

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeTransitionView;->isScrolling()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutterButtonClickable()Z
    .locals 1

    .prologue
    .line 3756
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isClickable()Z

    move-result v0

    return v0
.end method

.method public isShutterButtonEnabled()Z
    .locals 1

    .prologue
    .line 3015
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/BottomBarOperation;->isShutterButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    .line 3016
    invoke-virtual {v0}, Lcom/android/camera/ui/operation/BottomBarOperation;->isShutterButtonAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3015
    :goto_0
    return v0

    .line 3016
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutterButtonPressed()Z
    .locals 1

    .prologue
    .line 3007
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/BottomBarOperation;->isShutterButtonPressed()Z

    move-result v0

    return v0
.end method

.method public isSwitchButtonEnabled()Z
    .locals 1

    .prologue
    .line 3044
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/BottomBarOperation;->isSwitchButtonEnabled()Z

    move-result v0

    return v0
.end method

.method public isTouchShutterButton(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->isTouchShutterButton(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTutorialShow()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTutorialOverlay:Lcom/android/camera/ui/AbstractTutorialOverlay;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripLayout:Lcom/android/camera/widget/FilmstripLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripLayout:Lcom/android/camera/widget/FilmstripLayout;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripLayout:Lcom/android/camera/widget/FilmstripLayout;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripLayout;->onBackPressed()Z

    move-result v0

    .line 1752
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraModeSelected(I)V
    .locals 6
    .param p1, "modeIndex"    # I

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 3790
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v3, v4}, Lcom/android/camera/ShutterButton;->setAlpha(F)V

    .line 3791
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mSwtichCameraView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 3792
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mSwtichCameraView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 3794
    :cond_0
    iput v5, p0, Lcom/android/camera/app/CameraAppUI;->mModeCoverState:I

    .line 3795
    iput-boolean v5, p0, Lcom/android/camera/app/CameraAppUI;->mNeedHideModeCover:Z

    .line 3796
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v1

    .line 3799
    .local v1, "lastIndex":I
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v3, p1}, Lcom/android/camera/app/AppController;->transformModuleIndexIfNeed(I)I

    move-result v2

    .line 3800
    .local v2, "transformIndex":I
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v3, v2}, Lcom/android/camera/app/AppController;->onModeSelected(I)V

    .line 3802
    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    .line 3804
    .local v0, "currentIndex":I
    if-ne v1, v0, :cond_1

    .line 3805
    invoke-direct {p0}, Lcom/android/camera/app/CameraAppUI;->hideModeCover()V

    .line 3806
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->hideModeBlurCover()V

    .line 3809
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/app/CameraAppUI;->updateModeSpecificUIColors()V

    .line 3810
    return-void
.end method

.method public onChangeCamera(Z)V
    .locals 6
    .param p1, "needAnim"    # Z

    .prologue
    .line 1808
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v1

    .line 1809
    .local v1, "moduleController":Lcom/android/camera/module/ModuleController;
    invoke-interface {v1}, Lcom/android/camera/module/ModuleController;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v0

    .line 1823
    .local v0, "hardwareSpec":Lcom/android/camera/hardware/HardwareSpec;
    if-eqz v0, :cond_0

    .line 1824
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_flash_supported_back_camera"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1826
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_flash_supported_back_camera"

    .line 1828
    invoke-interface {v0}, Lcom/android/camera/hardware/HardwareSpec;->isFlashSupported()Z

    move-result v5

    .line 1826
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1832
    :cond_0
    invoke-interface {v1}, Lcom/android/camera/module/ModuleController;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/camera/app/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;ZZ)V

    .line 1834
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->syncModeOptionIndicators()V

    .line 1835
    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 3742
    iget v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeCoverState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 3743
    sget-object v0, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "EditDialog on onConfigurationChanged()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3749
    :cond_0
    :goto_0
    return-void

    .line 3747
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeTransitionRotateLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 3748
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeTransitionRotateLayout:Lcom/android/camera/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeTransitionView;->setupExternalGestureDetector(Landroid/view/GestureDetector;)V

    .line 1391
    :cond_0
    return-void
.end method

.method public onDialogDismissed()V
    .locals 2

    .prologue
    .line 2099
    sget-object v0, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onDialogDismissed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2100
    invoke-direct {p0}, Lcom/android/camera/app/CameraAppUI;->hideModeCover()V

    .line 2101
    return-void
.end method

.method public onFlashBottomBarUI()V
    .locals 6

    .prologue
    .line 1839
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v1

    .line 1840
    .local v1, "moduleController":Lcom/android/camera/module/ModuleController;
    invoke-interface {v1}, Lcom/android/camera/module/ModuleController;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v0

    .line 1842
    .local v0, "hardwareSpec":Lcom/android/camera/hardware/HardwareSpec;
    if-eqz v0, :cond_0

    .line 1843
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_flash_supported_back_camera"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1845
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_flash_supported_back_camera"

    .line 1847
    invoke-interface {v0}, Lcom/android/camera/hardware/HardwareSpec;->isFlashSupported()Z

    move-result v5

    .line 1845
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1851
    :cond_0
    invoke-interface {v1}, Lcom/android/camera/module/ModuleController;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/camera/app/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;ZZ)V

    .line 1853
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->syncModeOptionIndicators()V

    .line 1854
    return-void
.end method

.method public onModeButtonPressed(I)V
    .locals 3
    .param p1, "modeIndex"    # I

    .prologue
    .line 2184
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2, p1}, Lcom/android/camera/app/AppController;->getModuleId(I)I

    move-result v1

    .line 2185
    .local v1, "pressedModuleId":I
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    .line 2186
    .local v0, "currentModuleId":I
    if-eq v1, v0, :cond_0

    .line 2187
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 2189
    :cond_0
    return-void
.end method

.method public onModeListClosed()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1706
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->getLayerType()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1707
    sget-object v0, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Disabling hardware layer for the Shutter Button."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1708
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2, v5}, Lcom/android/camera/ShutterButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1710
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSwtichCameraView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1711
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSwtichCameraView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1712
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSwtichCameraView:Landroid/view/View;

    invoke-virtual {v0, v2, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1718
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/ShutterButton;->setAlpha(F)V

    .line 1719
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSwtichCameraView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1720
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSwtichCameraView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1722
    :cond_2
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    if-eqz v0, :cond_5

    .line 1724
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/BottomBarOperation;->isInIntentReview()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1739
    :cond_3
    :goto_0
    return-void

    .line 1728
    :cond_4
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    invoke-virtual {v0, v2}, Lcom/android/camera/widget/ModeOptionsOverlay;->setVisibility(I)V

    .line 1729
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->notifyModeListState(Z)V

    .line 1736
    :cond_5
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_3

    .line 1737
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PreviewOverlay;->setVisibility(I)V

    goto :goto_0
.end method

.method public onModeListOpenProgress(F)V
    .locals 5
    .param p1, "progress"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 1661
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_3

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->getLayerType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1665
    sget-object v0, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Disabling hardware layer for the Shutter Button."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1666
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v4, v3}, Lcom/android/camera/ShutterButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1669
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSwtichCameraView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1670
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSwtichCameraView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1671
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSwtichCameraView:Landroid/view/View;

    invoke-virtual {v0, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1700
    :cond_2
    :goto_0
    return-void

    .line 1675
    :cond_3
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->getLayerType()I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 1676
    sget-object v0, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Enabling hardware layer for the Shutter Button."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1677
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ShutterButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1680
    :cond_4
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSwtichCameraView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1681
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSwtichCameraView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 1682
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSwtichCameraView:Landroid/view/View;

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onModeSelected(I)V
    .locals 3
    .param p1, "modeIndex"    # I

    .prologue
    .line 2199
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    .line 2201
    .local v0, "lastIndex":I
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v2, p1}, Lcom/android/camera/app/AppController;->transformModuleIndexIfNeed(I)I

    move-result v1

    .line 2202
    .local v1, "transformIndex":I
    if-ne v0, v1, :cond_0

    .line 2206
    :goto_0
    return-void

    .line 2205
    :cond_0
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v2, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->onModeSelected(I)V

    goto :goto_0
.end method

.method public onNewPreviewFrame()V
    .locals 2

    .prologue
    .line 2093
    sget-object v0, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onNewPreviewFrame"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2094
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 2095
    invoke-direct {p0}, Lcom/android/camera/app/CameraAppUI;->hideModeCover()V

    .line 2096
    return-void
.end method

.method public onOpenFullScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1642
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    if-eqz v0, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    invoke-virtual {v0, v2}, Lcom/android/camera/widget/ModeOptionsOverlay;->setVisibility(I)V

    .line 1645
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->notifyModeListState(Z)V

    .line 1652
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_1

    .line 1653
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PreviewOverlay;->setVisibility(I)V

    .line 1655
    :cond_1
    return-void
.end method

.method public onPreviewReadyToStart()V
    .locals 2

    .prologue
    .line 2063
    iget v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeCoverState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2064
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeCoverState:I

    .line 2065
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->setupOneShotPreviewListener()V

    .line 2067
    :cond_0
    return-void
.end method

.method public onPreviewStarted()V
    .locals 2

    .prologue
    .line 2073
    sget-object v0, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2074
    iget v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeCoverState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2075
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v0

    const-string v1, "Wait Preview Frame..."

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 2080
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLorLMr1()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_6:Z

    if-eqz v0, :cond_1

    .line 2081
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeCoverState:I

    .line 2086
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 2087
    return-void

    .line 2083
    :cond_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeCoverState:I

    goto :goto_0
.end method

.method public onPreviewVisiblityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1600
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1601
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/app/CameraAppUI;->setIndicatorBottomBarWrapperVisible(Z)V

    .line 1611
    :goto_0
    return-void

    .line 1604
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/app/CameraAppUI;->setIndicatorBottomBarWrapperVisible(Z)V

    goto :goto_0
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 5
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 3190
    const-string v1, "pref_camera_hdr_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3191
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v0

    .line 3192
    .local v0, "moduleController":Lcom/android/camera/module/ModuleController;
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v1

    .line 3193
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3192
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/camera/app/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;ZZ)V

    .line 3196
    .end local v0    # "moduleController":Lcom/android/camera/module/ModuleController;
    :cond_0
    return-void
.end method

.method public onSettingsSelected()V
    .locals 4

    .prologue
    .line 2214
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_should_show_settings_button_cling"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2218
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->onSettingsSelected(Ljava/lang/String;)V

    .line 2219
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 0

    .prologue
    .line 2115
    return-void
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 2125
    return-void
.end method

.method public onShutterButtonLongPressed()V
    .locals 0

    .prologue
    .line 2130
    return-void
.end method

.method public onShutterButtonSwiped(I)V
    .locals 0
    .param p1, "swiped"    # I

    .prologue
    .line 2135
    return-void
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 2120
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 2566
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 2567
    iput p2, p0, Lcom/android/camera/app/CameraAppUI;->mSurfaceWidth:I

    .line 2568
    iput p3, p0, Lcom/android/camera/app/CameraAppUI;->mSurfaceHeight:I

    .line 2570
    sget-object v0, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "SurfaceTexture is available"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2571
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    if-eqz v0, :cond_0

    .line 2572
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/ui/PreviewStatusListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 2575
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mAppRootView:Lcom/android/camera/ui/MainActivityLayout;

    const v1, 0x7f0f0191

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020277

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2576
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mAppRootView:Lcom/android/camera/ui/MainActivityLayout;

    const v1, 0x7f0f020e

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e000e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2577
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 2591
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 2592
    sget-object v0, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "SurfaceTexture is destroyed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2593
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    if-eqz v0, :cond_0

    .line 2594
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewStatusListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    .line 2596
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 2581
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 2582
    iput p2, p0, Lcom/android/camera/app/CameraAppUI;->mSurfaceWidth:I

    .line 2583
    iput p3, p0, Lcom/android/camera/app/CameraAppUI;->mSurfaceHeight:I

    .line 2584
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    if-eqz v0, :cond_0

    .line 2585
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/ui/PreviewStatusListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 2587
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x4

    .line 2601
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 2603
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    if-eqz v0, :cond_0

    .line 2604
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewStatusListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 2611
    :cond_0
    iget v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeCoverState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2612
    iput v2, p0, Lcom/android/camera/app/CameraAppUI;->mModeCoverState:I

    .line 2645
    :cond_1
    :goto_0
    return-void

    .line 2613
    :cond_2
    iget v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeCoverState:I

    if-ne v0, v2, :cond_1

    .line 2614
    sget-object v0, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "hiding cover via onSurfaceTextureUpdated"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2615
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_3

    .line 2616
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "CameraAppUI.onSurfaceTextureUpdated"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2617
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2618
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 2620
    :cond_3
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 2621
    invoke-direct {p0}, Lcom/android/camera/app/CameraAppUI;->hideModeCover()V

    .line 2622
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->hideModeBlurCover()V

    .line 2623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mSwitchCameraPreviewArrived:Z

    .line 2624
    invoke-direct {p0}, Lcom/android/camera/app/CameraAppUI;->hideSwitchCameraCover()V

    .line 2625
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mAppRootView:Lcom/android/camera/ui/MainActivityLayout;

    new-instance v1, Lcom/android/camera/app/CameraAppUI$15;

    invoke-direct {v1, p0}, Lcom/android/camera/app/CameraAppUI$15;-><init>(Lcom/android/camera/app/CameraAppUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MainActivityLayout;->post(Ljava/lang/Runnable;)Z

    .line 2639
    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mIsFirstTimeLaunch:Z

    if-eqz v0, :cond_1

    .line 2640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mIsFirstTimeLaunch:Z

    .line 2641
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mAppRootView:Lcom/android/camera/ui/MainActivityLayout;

    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mFirstTimeLaunchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MainActivityLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onTutorialClosed()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTutorialOverlay:Lcom/android/camera/ui/AbstractTutorialOverlay;

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTutorialOverlay:Lcom/android/camera/ui/AbstractTutorialOverlay;

    .line 139
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 140
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 141
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 143
    :cond_0
    return-void
.end method

.method public openModeList()V
    .locals 0

    .prologue
    .line 1545
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1524
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mEndSwitchToOtherModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mEndSwitchToOtherModeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1526
    iput-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mEndSwitchToOtherModeRunnable:Ljava/lang/Runnable;

    .line 1528
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mSwipeEnabled:Z

    .line 1529
    invoke-direct {p0}, Lcom/android/camera/app/CameraAppUI;->hideModeCover()V

    .line 1530
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_1

    .line 1531
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 1532
    iput-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 1534
    :cond_1
    return-void
.end method

.method public pausePreviewRendering()V
    .locals 2

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1620
    return-void
.end method

.method public prepareModuleUI()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1941
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1942
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mModuleUI:Landroid/widget/FrameLayout;

    .line 1943
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    const v2, 0x7f0f00ce

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mProModuleUI:Landroid/widget/FrameLayout;

    .line 1944
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    const v2, 0x7f0f00c3

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/CustomTextureView;

    iput-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mTextureView:Lcom/android/camera/ui/CustomTextureView;

    .line 1945
    new-instance v1, Lcom/android/camera/TextureViewHelper;

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mTextureView:Lcom/android/camera/ui/CustomTextureView;

    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    iget-object v4, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    .line 1946
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/TextureViewHelper;-><init>(Landroid/view/TextureView;Lcom/android/camera/CaptureLayoutHelper;Lcom/android/camera/app/CameraProvider;Lcom/android/camera/app/AppController;)V

    iput-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    .line 1947
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mTextureView:Lcom/android/camera/ui/CustomTextureView;

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CustomTextureView;->setTextureViewHelper(Lcom/android/camera/TextureViewHelper;)V

    .line 1948
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    invoke-virtual {v1, p0}, Lcom/android/camera/TextureViewHelper;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1949
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/camera/TextureViewHelper;->setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1951
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    const v2, 0x7f0f00ca

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/SwitchAnimationView;

    iput-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mSwitchAnimationView:Lcom/android/camera/ui/SwitchAnimationView;

    .line 1952
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    const v2, 0x7f0f020e

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/operation/BottomBarOperation;

    iput-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    .line 1953
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/operation/BottomBarOperation;->setModeSwitchListener(Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;)V

    .line 1954
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e001c

    .line 1955
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1956
    .local v0, "unpressedColor":I
    invoke-virtual {p0, v0}, Lcom/android/camera/app/CameraAppUI;->setBottomBarColor(I)V

    .line 1957
    invoke-direct {p0}, Lcom/android/camera/app/CameraAppUI;->updateModeSpecificUIColors()V

    .line 1959
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/operation/BottomBarOperation;->setCaptureLayoutHelper(Lcom/android/camera/CaptureLayoutHelper;)V

    .line 1960
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    new-instance v2, Lcom/android/camera/app/CameraAppUI$MyTouchListener;

    invoke-direct {v2, p0, v6}, Lcom/android/camera/app/CameraAppUI$MyTouchListener;-><init>(Lcom/android/camera/app/CameraAppUI;Lcom/android/camera/app/CameraAppUI$1;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/operation/BottomBarOperation;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1961
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    const v2, 0x7f0f019f

    .line 1962
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/ModeOptionsOverlay;

    iput-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    .line 1963
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    const v2, 0x7f0f00cf

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    .line 1966
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    .line 1967
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v2

    .line 1966
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/app/CameraAppUI;->resetBottomControls(Lcom/android/camera/module/ModuleController;I)V

    .line 1968
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ModeOptionsOverlay;->setCaptureLayoutHelper(Lcom/android/camera/CaptureLayoutHelper;)V

    .line 1970
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    const v2, 0x7f0f00b4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ShutterButton;

    iput-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 1971
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/app/CameraAppUI;->addShutterListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 1972
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    invoke-virtual {p0, v1}, Lcom/android/camera/app/CameraAppUI;->addShutterListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 1973
    invoke-virtual {p0, p0}, Lcom/android/camera/app/CameraAppUI;->addShutterListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 1975
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    const v2, 0x7f0f020f

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mSwtichCameraView:Landroid/view/View;

    .line 1979
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 1980
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    new-instance v2, Lcom/android/camera/app/CameraAppUI$MyTouchListener;

    invoke-direct {v2, p0, v6}, Lcom/android/camera/app/CameraAppUI$MyTouchListener;-><init>(Lcom/android/camera/app/CameraAppUI;Lcom/android/camera/app/CameraAppUI$1;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PreviewOverlay;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1981
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PreviewOverlay;->setOnPreviewTouchedListener(Lcom/android/camera/ui/PreviewOverlay$OnPreviewTouchedListener;)V

    .line 1982
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget v2, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarHeight:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PreviewOverlay;->setBottomBarHeight(I)V

    .line 1985
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    const v2, 0x7f0f00c6

    .line 1986
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/CaptureAnimationOverlay;

    iput-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mCaptureOverlay:Lcom/android/camera/ui/CaptureAnimationOverlay;

    .line 1987
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v1, v2}, Lcom/android/camera/TextureViewHelper;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1988
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mCaptureOverlay:Lcom/android/camera/ui/CaptureAnimationOverlay;

    invoke-virtual {v1, v2}, Lcom/android/camera/TextureViewHelper;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1990
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->load(Landroid/view/View;)V

    .line 1993
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 1994
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    const v2, 0x7f0f00d1

    .line 1995
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mTutorialsPlaceHolderWrapper:Landroid/widget/FrameLayout;

    .line 1996
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mAppRootView:Lcom/android/camera/ui/MainActivityLayout;

    const v2, 0x7f0f020d

    .line 1997
    invoke-virtual {v1, v2}, Lcom/android/camera/ui/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;

    iput-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mBottomCaptureLayoutOperation:Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;

    .line 1998
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mBottomCaptureLayoutOperation:Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;->setCaptureLayoutHelper(Lcom/android/camera/CaptureLayoutHelper;)V

    .line 1999
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mBottomCaptureLayoutOperation:Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;

    const v2, 0x7f0f00ba

    .line 2000
    invoke-virtual {v1, v2}, Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mCountdownCancelButton:Landroid/widget/ImageButton;

    .line 2001
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    new-instance v2, Lcom/android/camera/app/CameraAppUI$10;

    invoke-direct {v2, p0}, Lcom/android/camera/app/CameraAppUI$10;-><init>(Lcom/android/camera/app/CameraAppUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/TextureViewHelper;->addAspectRatioChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;)V

    .line 2011
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSceneRecognitionManager()Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->load(Landroid/widget/FrameLayout;Lcom/android/camera/CaptureLayoutHelper;)V

    .line 2012
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/effect/EffectChooseManager;->load(Landroid/view/ViewGroup;Lcom/android/camera/CaptureLayoutHelper;)V

    .line 2013
    return-void
.end method

.method public removePreviewAreaChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/camera/TextureViewHelper;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1931
    return-void
.end method

.method public removeShutterListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    .prologue
    .line 3085
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->removeOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 3086
    return-void
.end method

.method public removeVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;

    .prologue
    .line 3093
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->removeVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V

    .line 3094
    return-void
.end method

.method public requireBlockTouch(Z)V
    .locals 1
    .param p1, "block"    # Z

    .prologue
    .line 3624
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->requireBlockTouch(Z)V

    .line 3625
    return-void
.end method

.method public resetBottomControls(Lcom/android/camera/module/ModuleController;I)V
    .locals 2
    .param p1, "module"    # Lcom/android/camera/module/ModuleController;
    .param p2, "moduleIndex"    # I

    .prologue
    .line 2867
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraAppUI;->areBottomControlsUsed(Lcom/android/camera/module/ModuleController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2868
    invoke-virtual {p0, p2}, Lcom/android/camera/app/CameraAppUI;->setBottomBarShutterIcon(I)V

    .line 2869
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureLayoutHelper;->setShowBottomBar(Z)V

    .line 2873
    :goto_0
    return-void

    .line 2871
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureLayoutHelper;->setShowBottomBar(Z)V

    goto :goto_0
.end method

.method public resume(Z)V
    .locals 10
    .param p1, "isFirstLaunch"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1470
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraAppUI;->showModeCoverUntilPreviewReady(Z)V

    .line 1472
    iget-object v6, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/util/ProductModelUtil;->hasNotchFeature(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1473
    const/4 v2, 0x0

    .line 1474
    .local v2, "needUpdateLayout":Z
    iget-object v6, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/util/ProductModelUtil;->settingNotchEnable(Landroid/content/Context;)Z

    move-result v4

    .line 1475
    .local v4, "settingNotchEnable":Z
    if-eqz v4, :cond_4

    iget-boolean v6, p0, Lcom/android/camera/app/CameraAppUI;->mNotchEnable:Z

    if-nez v6, :cond_4

    .line 1476
    const/4 v2, 0x1

    .line 1477
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/app/CameraAppUI;->mNotchEnable:Z

    .line 1483
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 1484
    iget-object v6, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/util/ProductModelUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v5

    .line 1485
    .local v5, "statusbarHeight":I
    sget-object v6, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "statusbarHeight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1487
    iget-object v6, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    const v8, 0x7f0f0190

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1488
    .local v1, "modeOptionsButtons":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1489
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1491
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-boolean v6, p0, Lcom/android/camera/app/CameraAppUI;->mNotchEnable:Z

    if-eqz v6, :cond_5

    move v6, v5

    :goto_1
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1492
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1495
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v6, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_2

    .line 1496
    iget-object v6, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1497
    .restart local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-boolean v6, p0, Lcom/android/camera/app/CameraAppUI;->mNotchEnable:Z

    if-eqz v6, :cond_6

    .end local v5    # "statusbarHeight":I
    :goto_2
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1498
    iget-object v6, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1508
    .end local v1    # "modeOptionsButtons":Landroid/view/View;
    .end local v2    # "needUpdateLayout":Z
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "settingNotchEnable":Z
    :cond_2
    if-nez p1, :cond_3

    .line 1509
    iget-object v6, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/util/SystemUIUtil;->isNaviHide(Landroid/content/Context;)Z

    move-result v0

    .line 1510
    .local v0, "isNaviHide":Z
    iget-boolean v6, p0, Lcom/android/camera/app/CameraAppUI;->mIsNaviHide:Z

    if-eq v6, v0, :cond_3

    .line 1511
    iget-object v6, p0, Lcom/android/camera/app/CameraAppUI;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    if-eqz v0, :cond_7

    :goto_3
    invoke-virtual {v6, v7}, Lcom/android/camera/CaptureLayoutHelper;->setNavigationBarHeight(I)V

    .line 1512
    iput-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mIsNaviHide:Z

    .line 1521
    .end local v0    # "isNaviHide":Z
    :cond_3
    return-void

    .line 1478
    .restart local v2    # "needUpdateLayout":Z
    .restart local v4    # "settingNotchEnable":Z
    :cond_4
    if-nez v4, :cond_0

    iget-boolean v6, p0, Lcom/android/camera/app/CameraAppUI;->mNotchEnable:Z

    if-eqz v6, :cond_0

    .line 1479
    const/4 v2, 0x1

    .line 1480
    iput-boolean v7, p0, Lcom/android/camera/app/CameraAppUI;->mNotchEnable:Z

    goto :goto_0

    .restart local v1    # "modeOptionsButtons":Landroid/view/View;
    .restart local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v5    # "statusbarHeight":I
    :cond_5
    move v6, v7

    .line 1491
    goto :goto_1

    :cond_6
    move v5, v7

    .line 1497
    goto :goto_2

    .line 1511
    .end local v1    # "modeOptionsButtons":Landroid/view/View;
    .end local v2    # "needUpdateLayout":Z
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "settingNotchEnable":Z
    .end local v5    # "statusbarHeight":I
    .restart local v0    # "isNaviHide":Z
    :cond_7
    iget-object v7, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v7

    goto :goto_3
.end method

.method public resumePreviewRendering()V
    .locals 2

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mCameraRootView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1627
    return-void
.end method

.method public setAndLockThumbnailVisibilityWithoutClear(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    .line 2353
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/RoundedThumbnailView;->setAndLockThumbnailVisibilityWithoutClear(I)V

    .line 2354
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/widget/RoundedThumbnailView;->setClickable(Z)V

    .line 2355
    return-void

    .line 2354
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBottomBarColor(I)V
    .locals 1
    .param p1, "colorId"    # I

    .prologue
    .line 2910
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->setBackgroundColor(I)V

    .line 2911
    return-void
.end method

.method public setBottomBarColorsForModeIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2917
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->setColorsForModeIndex(I)V

    .line 2918
    return-void
.end method

.method public setBottomBarShutterIcon(I)V
    .locals 2
    .param p1, "modeIndex"    # I

    .prologue
    .line 2925
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/util/CameraUtil;->getCameraShutterIconId(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->setShutterButtonIcon(I)V

    .line 2927
    return-void
.end method

.method public setBottomBarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 3071
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/operation/BottomBarOperation;->setVisibility(I)V

    .line 3072
    return-void

    .line 3071
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setCancelShutterButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 3111
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mCountdownCancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3112
    return-void
.end method

.method public setDefaultBufferSizeToViewDimens()V
    .locals 3

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTextureView:Lcom/android/camera/ui/CustomTextureView;

    if-nez v0, :cond_1

    .line 1027
    :cond_0
    sget-object v0, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Could not set SurfaceTexture default buffer dimensions, not yet setup"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1031
    :goto_0
    return-void

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mTextureView:Lcom/android/camera/ui/CustomTextureView;

    invoke-virtual {v1}, Lcom/android/camera/ui/CustomTextureView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mTextureView:Lcom/android/camera/ui/CustomTextureView;

    invoke-virtual {v2}, Lcom/android/camera/ui/CustomTextureView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_0
.end method

.method public setDisableAllUserInteractions(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2165
    if-eqz p1, :cond_1

    .line 2166
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->disableModeOptions()V

    .line 2167
    invoke-virtual {p0, v0}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 2168
    invoke-virtual {p0, v0}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 2175
    :goto_0
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    if-eqz v0, :cond_0

    .line 2176
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->setDisableAllUserInteractions(Z)V

    .line 2178
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/app/CameraAppUI;->mDisableAllUserInteractions:Z

    .line 2179
    return-void

    .line 2171
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 2172
    invoke-virtual {p0, v1}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 2173
    invoke-virtual {p0, v1}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    goto :goto_0
.end method

.method public setFakeShutterButtonEnabled()V
    .locals 1

    .prologue
    .line 2989
    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mDisableAllUserInteractions:Z

    if-nez v0, :cond_0

    .line 2990
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/BottomBarOperation;->setFakeShutterButtonEnabled()V

    .line 2992
    :cond_0
    return-void
.end method

.method public setFakeSwitchButtonEnabled()V
    .locals 1

    .prologue
    .line 2995
    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mDisableAllUserInteractions:Z

    if-nez v0, :cond_0

    .line 2996
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/BottomBarOperation;->setFakeSwitchButtonEnabled()V

    .line 2998
    :cond_0
    return-void
.end method

.method public setFilmstripBottomControlsListener(Lcom/android/camera/app/CameraAppUI$BottomPanel$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/app/CameraAppUI$BottomPanel$Listener;

    .prologue
    .line 2461
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripBottomControls:Lcom/android/camera/app/FilmstripBottomPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripBottomControls:Lcom/android/camera/app/FilmstripBottomPanel;

    invoke-virtual {v0, p1}, Lcom/android/camera/app/FilmstripBottomPanel;->setListener(Lcom/android/camera/app/CameraAppUI$BottomPanel$Listener;)V

    .line 2462
    :cond_0
    return-void
.end method

.method public setHDRBadgeVisible(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mHDRBadge:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 2767
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mHDRBadge:Lcom/android/camera/ui/RotateImageView;

    new-instance v1, Lcom/android/camera/app/CameraAppUI$17;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/app/CameraAppUI$17;-><init>(Lcom/android/camera/app/CameraAppUI;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->post(Ljava/lang/Runnable;)Z

    .line 2776
    :cond_0
    return-void
.end method

.method public setIndicatorBottomBarWrapperVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 3063
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mBottomCaptureLayoutOperation:Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;->setVisibility(I)V

    .line 3064
    return-void

    .line 3063
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setLockScreenThumbnail()V
    .locals 2

    .prologue
    .line 2288
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mDefaultRoundedThumbnailView:Landroid/widget/ImageView;

    const v1, 0x7f020263

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2289
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mDefaultRoundedThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2290
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mDefaultRoundedThumbnailView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2292
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mDefaultRoundedThumbnailView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 2293
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mDefaultRoundedThumbnailView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/app/CameraAppUI$11;

    invoke-direct {v1, p0}, Lcom/android/camera/app/CameraAppUI$11;-><init>(Lcom/android/camera/app/CameraAppUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2299
    return-void
.end method

.method public setModeTextVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 3620
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->setModeTextVisible(I)V

    .line 3621
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 168
    iput p1, p0, Lcom/android/camera/app/CameraAppUI;->mOrientation:I

    .line 169
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ButtonManager;->setOrientation(IZ)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/EffectChooseManager;->setOrientation(IZ)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSceneRecognitionManager()Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSceneRecognitionManager()Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->setOrientation(IZ)V

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/operation/BottomBarOperation;->setOrientation(IZ)V

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/PreviewOverlay;->setOrientation(IZ)V

    .line 180
    :cond_4
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/focus/FocusRing;->setOrientation(I)V

    .line 182
    :cond_5
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ShutterButton;->setOrientation(IZ)V

    .line 183
    :cond_6
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTutorialOverlay:Lcom/android/camera/ui/AbstractTutorialOverlay;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTutorialOverlay:Lcom/android/camera/ui/AbstractTutorialOverlay;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/AbstractTutorialOverlay;->setOrientation(IZ)V

    .line 184
    :cond_7
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mHDRBadge:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mHDRBadge:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 185
    :cond_8
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSRBadge:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSRBadge:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 186
    :cond_9
    return-void
.end method

.method public setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V
    .locals 1
    .param p1, "previewStatusListener"    # Lcom/android/camera/ui/PreviewStatusListener;

    .prologue
    .line 1765
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 1766
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    if-eqz v0, :cond_0

    .line 1767
    invoke-direct {p0}, Lcom/android/camera/app/CameraAppUI;->onPreviewListenerChanged()V

    .line 1769
    :cond_0
    return-void
.end method

.method public setSRBadgeVisible(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 2779
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSRBadge:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 2780
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mSRBadge:Lcom/android/camera/ui/RotateImageView;

    new-instance v1, Lcom/android/camera/app/CameraAppUI$18;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/app/CameraAppUI$18;-><init>(Lcom/android/camera/app/CameraAppUI;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->post(Ljava/lang/Runnable;)Z

    .line 2789
    :cond_0
    return-void
.end method

.method public setShouldSuppressCaptureIndicator(Z)V
    .locals 0
    .param p1, "suppress"    # Z

    .prologue
    .line 2248
    iput-boolean p1, p0, Lcom/android/camera/app/CameraAppUI;->mSuppressCaptureIndicator:Z

    .line 2249
    return-void
.end method

.method public setShutterButtonEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2951
    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mDisableAllUserInteractions:Z

    if-nez v0, :cond_0

    .line 2952
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2953
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mIsSwitchToOtherMode:Z

    if-eqz v0, :cond_1

    .line 2954
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/BottomBarOperation;->setFakeShutterButtonEnabled()V

    .line 2971
    :cond_0
    :goto_0
    return-void

    .line 2956
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->setShutterButtonEnabled(Z)V

    goto :goto_0

    .line 2959
    :cond_2
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    new-instance v1, Lcom/android/camera/app/CameraAppUI$19;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/app/CameraAppUI$19;-><init>(Lcom/android/camera/app/CameraAppUI;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setShutterButtonEnabledImmediately(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 3001
    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mDisableAllUserInteractions:Z

    if-nez v0, :cond_0

    .line 3002
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->setShutterButtonEnabledImmediately(Z)V

    .line 3004
    :cond_0
    return-void
.end method

.method public setShutterButtonImportantToA11y(Z)V
    .locals 1
    .param p1, "important"    # Z

    .prologue
    .line 3011
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->setShutterButtonImportantToA11y(Z)V

    .line 3012
    return-void
.end method

.method public setShutterMovable(Z)V
    .locals 1
    .param p1, "movable"    # Z

    .prologue
    .line 3768
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->enableMovable(Z)V

    .line 3769
    return-void
.end method

.method public setSurfaceTextureDefaultBufferSize(II)V
    .locals 1
    .param p1, "mPreviewBufferWidth"    # I
    .param p2, "mPreviewBufferHeight"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTextureView:Lcom/android/camera/ui/CustomTextureView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CustomTextureView;->setDefaultBufferSize(II)V

    .line 150
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1373
    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mIsSwitchToOtherMode:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->enableQuickSwitch()Z

    move-result p1

    .end local p1    # "enabled":Z
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/app/CameraAppUI;->mSwipeEnabled:Z

    .line 1376
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mAppRootView:Lcom/android/camera/ui/MainActivityLayout;

    iget-boolean v1, p0, Lcom/android/camera/app/CameraAppUI;->mSwipeEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MainActivityLayout;->setSwipeEnabled(Z)V

    .line 1377
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    if-eqz v0, :cond_1

    .line 1378
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    iget-boolean v1, p0, Lcom/android/camera/app/CameraAppUI;->mSwipeEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->setSwipeEnabled(Z)V

    .line 1380
    :cond_1
    return-void
.end method

.method public setSwitchButtonEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 3021
    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mDisableAllUserInteractions:Z

    if-nez v0, :cond_0

    .line 3022
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3023
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mIsSwitchToOtherMode:Z

    if-eqz v0, :cond_1

    .line 3024
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/BottomBarOperation;->setFakeSwitchButtonEnabled()V

    .line 3041
    :cond_0
    :goto_0
    return-void

    .line 3026
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->setSwitchButtonEnabled(Z)V

    goto :goto_0

    .line 3029
    :cond_2
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    new-instance v1, Lcom/android/camera/app/CameraAppUI$21;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/app/CameraAppUI$21;-><init>(Lcom/android/camera/app/CameraAppUI;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setSwitchButtonVisible(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    .line 3048
    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mDisableAllUserInteractions:Z

    if-nez v0, :cond_0

    .line 3049
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3050
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->setSwitchButtonVisible(I)V

    .line 3060
    :cond_0
    :goto_0
    return-void

    .line 3052
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    new-instance v1, Lcom/android/camera/app/CameraAppUI$22;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/app/CameraAppUI$22;-><init>(Lcom/android/camera/app/CameraAppUI;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setThumbnailClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 3752
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/RoundedThumbnailView;->setClickable(Z)V

    .line 3753
    return-void
.end method

.method public setThumbnailVisibility(Z)V
    .locals 2
    .param p1, "needShow"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2323
    if-eqz p1, :cond_1

    .line 2324
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView;->isThumbnailSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2325
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/RoundedThumbnailView;->setVisibility(I)V

    .line 2336
    :goto_0
    return-void

    .line 2327
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/app/CameraAppUI;->showDefaultThumbnail(Z)V

    goto :goto_0

    .line 2330
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView;->isThumbnailSet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2331
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/RoundedThumbnailView;->setVisibility(I)V

    goto :goto_0

    .line 2333
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->hideDefaultThumbnail()V

    goto :goto_0
.end method

.method public setVideoShutterButtonEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2974
    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mDisableAllUserInteractions:Z

    if-nez v0, :cond_0

    .line 2975
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2976
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->setVideoShutterButtonEnabled(Z)V

    .line 2986
    :cond_0
    :goto_0
    return-void

    .line 2978
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    new-instance v1, Lcom/android/camera/app/CameraAppUI$20;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/app/CameraAppUI$20;-><init>(Lcom/android/camera/app/CameraAppUI;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setupClingForViewer(I)V
    .locals 7
    .param p1, "viewerType"    # I

    .prologue
    .line 1331
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 1332
    iget-object v4, p0, Lcom/android/camera/app/CameraAppUI;->mAppRootView:Lcom/android/camera/ui/MainActivityLayout;

    const v5, 0x7f0f00d3

    .line 1333
    invoke-virtual {v4, v5}, Lcom/android/camera/ui/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1334
    .local v1, "filmstripContent":Landroid/widget/FrameLayout;
    if-eqz v1, :cond_0

    .line 1336
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/util/AndroidServices;->provideLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1337
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04002c

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/widget/Cling;

    .line 1339
    .local v3, "refocusCling":Lcom/android/camera/widget/Cling;
    iget-object v4, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08004c

    .line 1340
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1339
    invoke-virtual {v3, v4}, Lcom/android/camera/widget/Cling;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    iget-object v4, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    .line 1344
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1345
    .local v0, "clingWidth":I
    const/4 v4, -0x2

    invoke-virtual {v1, v3, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1347
    iget-object v4, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripBottomControls:Lcom/android/camera/app/FilmstripBottomPanel;

    invoke-virtual {v4, p1, v3}, Lcom/android/camera/app/FilmstripBottomPanel;->setClingForViewer(ILcom/android/camera/widget/Cling;)V

    .line 1350
    .end local v0    # "clingWidth":I
    .end local v1    # "filmstripContent":Landroid/widget/FrameLayout;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "refocusCling":Lcom/android/camera/widget/Cling;
    :cond_0
    return-void
.end method

.method public shouldShowAspectRatioDialog()Z
    .locals 1

    .prologue
    .line 3594
    const/4 v0, 0x0

    return v0
.end method

.method public showAccessibilityZoomUI(F)V
    .locals 0
    .param p1, "maxZoom"    # F

    .prologue
    .line 1549
    return-void
.end method

.method public showBottomBar()V
    .locals 2

    .prologue
    .line 2896
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->setVisibility(I)V

    .line 2897
    return-void
.end method

.method public showBottomControls()V
    .locals 1

    .prologue
    .line 2450
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripBottomControls:Lcom/android/camera/app/FilmstripBottomPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripBottomControls:Lcom/android/camera/app/FilmstripBottomPanel;

    invoke-virtual {v0}, Lcom/android/camera/app/FilmstripBottomPanel;->show()V

    .line 2451
    :cond_0
    return-void
.end method

.method public showDefaultThumbnail(Z)V
    .locals 2
    .param p1, "needChangeDefaultIcon"    # Z

    .prologue
    .line 2341
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView;->isThumbnailSet()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/BottomBarOperation;->isInRecord()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mIsCaptureIntent:Z

    if-nez v0, :cond_1

    .line 2342
    if-eqz p1, :cond_0

    .line 2343
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mDefaultRoundedThumbnailView:Landroid/widget/ImageView;

    const v1, 0x7f020297

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2345
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mDefaultRoundedThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2346
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mDefaultRoundedThumbnailView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2349
    :cond_1
    return-void
.end method

.method public showFilmstrip()V
    .locals 0

    .prologue
    .line 3602
    return-void
.end method

.method public showGridLines()V
    .locals 2

    .prologue
    .line 2655
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mGridLines:Lcom/android/camera/ui/GridLines;

    if-eqz v0, :cond_0

    .line 2656
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mGridLines:Lcom/android/camera/ui/GridLines;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GridLines;->setVisibility(I)V

    .line 2658
    :cond_0
    return-void
.end method

.method public showModeBlurCover(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3815
    iget-boolean v1, p0, Lcom/android/camera/app/CameraAppUI;->mIsSwitchToOtherMode:Z

    if-eqz v1, :cond_0

    .line 3816
    iput-boolean v3, p0, Lcom/android/camera/app/CameraAppUI;->mNeedHideModeCover:Z

    .line 3819
    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/app/CameraAppUI;->mIsSwitchToOtherMode:Z

    .line 3820
    new-instance v1, Lcom/android/camera/app/CameraAppUI$25;

    invoke-direct {v1, p0}, Lcom/android/camera/app/CameraAppUI$25;-><init>(Lcom/android/camera/app/CameraAppUI;)V

    iput-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mEndSwitchToOtherModeRunnable:Ljava/lang/Runnable;

    .line 3826
    const/4 v0, 0x0

    .line 3827
    .local v0, "previewsrc":Landroid/graphics/Bitmap;
    iget-boolean v1, p0, Lcom/android/camera/app/CameraAppUI;->mShowModeBlurCover:Z

    if-nez v1, :cond_1

    .line 3828
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->disableButtonClick(I)V

    .line 3829
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mCameraModuleScreenShotProvider:Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;

    const/16 v2, 0x8

    .line 3830
    invoke-interface {v1, v2}, Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;->getOriPreviewFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3832
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 3833
    invoke-virtual {p0, v3}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 3834
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v3}, Lcom/android/camera/ShutterButton;->enableTouch(Z)V

    .line 3835
    invoke-virtual {p0, p1}, Lcom/android/camera/app/CameraAppUI;->hideIndicatorAnim(I)V

    .line 3836
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mSwitchAnimationView:Lcom/android/camera/ui/SwitchAnimationView;

    iget-boolean v2, p0, Lcom/android/camera/app/CameraAppUI;->mShowModeBlurCover:Z

    invoke-virtual {v1, p1, v2, v0, p0}, Lcom/android/camera/ui/SwitchAnimationView;->showModeBlurCover(IZLandroid/graphics/Bitmap;Lcom/android/camera/app/CameraAppUI;)V

    .line 3837
    iput-boolean v4, p0, Lcom/android/camera/app/CameraAppUI;->mShowModeBlurCover:Z

    .line 3839
    return-void
.end method

.method public showModeOptions()V
    .locals 1

    .prologue
    .line 2796
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions(Z)V

    .line 2797
    return-void
.end method

.method public showModeOptions(Z)V
    .locals 2
    .param p1, "hideBottomBar"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2800
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 2801
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ModeOptionsOverlay;->setVisibility(I)V

    .line 2802
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2803
    if-nez p1, :cond_0

    .line 2804
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->setOperationVisible(I)V

    .line 2805
    invoke-virtual {p0, v1}, Lcom/android/camera/app/CameraAppUI;->showDefaultThumbnail(Z)V

    .line 2807
    :cond_0
    return-void
.end method

.method public showPreviewOverlay()V
    .locals 2

    .prologue
    .line 2838
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_0

    .line 2839
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewOverlay;->setVisibility(I)V

    .line 2841
    :cond_0
    return-void
.end method

.method public showPreviewTransition(Lcom/android/camera/ui/PreviewTransitionView$TransitionType;Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)V
    .locals 4
    .param p1, "transitionType"    # Lcom/android/camera/ui/PreviewTransitionView$TransitionType;
    .param p2, "animationFinishedListener"    # Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1297
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v2

    const-string v3, "showPreviewTransition"

    invoke-virtual {v2, v3}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 1298
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    sget-object v2, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "showCameraSwitchAnim"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1299
    invoke-static {}, Lcom/android/camera/cpuboost/CpuBooster;->instance()Lcom/android/camera/cpuboost/BoostEngine;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Lcom/android/camera/cpuboost/BoostEngine;->boostInTime(I)Z

    .line 1300
    const-string v2, "boost done"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1301
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mModeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    invoke-virtual {v2}, Lcom/android/camera/ui/ModeTransitionView;->setupTransparentCover()V

    .line 1302
    sget-object v2, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "setupTransparentCover done"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1303
    const-string v2, "setupTransparentCover done"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1304
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mCameraModuleScreenShotProvider:Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;->getPreviewFrame(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1305
    .local v1, "preview":Landroid/graphics/Bitmap;
    const-string v2, "getPreviewFrame done"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1306
    if-eqz v1, :cond_0

    .line 1307
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mPreviewTransitionView:Lcom/android/camera/ui/PreviewTransitionView;

    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    invoke-virtual {v3}, Lcom/android/camera/TextureViewHelper;->getPreviewArea()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v1, v3, p1, p2}, Lcom/android/camera/ui/PreviewTransitionView;->setupTransition(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Lcom/android/camera/ui/PreviewTransitionView$TransitionType;Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)V

    .line 1308
    sget-object v2, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "setupTransition done"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1312
    :goto_0
    const-string v2, "setupTransition done"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1313
    new-instance v2, Lcom/android/camera/app/CameraAppUI$7;

    invoke-direct {v2, p0}, Lcom/android/camera/app/CameraAppUI$7;-><init>(Lcom/android/camera/app/CameraAppUI;)V

    iput-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mHideCoverRunnable:Ljava/lang/Runnable;

    .line 1320
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/camera/app/CameraAppUI;->mModeCoverState:I

    .line 1321
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 1322
    return-void

    .line 1310
    :cond_0
    sget-object v2, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "preview bitmap is null, skip trasition animation"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showTutorial(Lcom/android/camera/ui/AbstractTutorialOverlay;Landroid/view/LayoutInflater;)V
    .locals 3
    .param p1, "tutorial"    # Lcom/android/camera/ui/AbstractTutorialOverlay;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 3575
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTutorialsPlaceHolderWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0, p2}, Lcom/android/camera/ui/AbstractTutorialOverlay;->show(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 3576
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI;->mTutorialOverlay:Lcom/android/camera/ui/AbstractTutorialOverlay;

    .line 3577
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTutorialOverlay:Lcom/android/camera/ui/AbstractTutorialOverlay;

    iget v1, p0, Lcom/android/camera/app/CameraAppUI;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/AbstractTutorialOverlay;->setOrientation(IZ)V

    .line 3580
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->transitionToHide()V

    .line 3581
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 3582
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 3583
    return-void
.end method

.method public showVideoSnapShotButton()V
    .locals 1

    .prologue
    .line 3101
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mDefaultRoundedThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->hideDefaultThumbnail()V

    .line 3102
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/BottomBarOperation;->showVideoSnapShotButton()V

    .line 3103
    return-void
.end method

.method public startCaptureIndicatorRevealAnimation(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "accessibilityString"    # Ljava/lang/String;
    .param p2, "needAnim"    # Z

    .prologue
    .line 2257
    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI;->mSuppressCaptureIndicator:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripLayout:Lcom/android/camera/widget/FilmstripLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripLayout:Lcom/android/camera/widget/FilmstripLayout;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2262
    :cond_0
    :goto_0
    return-void

    .line 2260
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/widget/RoundedThumbnailView;->startRevealThumbnailAnimation(Ljava/lang/String;Z)V

    .line 2261
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->hideDefaultThumbnail()V

    goto :goto_0
.end method

.method public startFlashAnimation(Z)V
    .locals 2
    .param p1, "shortFlash"    # Z

    .prologue
    .line 2361
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mCaptureOverlay:Lcom/android/camera/ui/CaptureAnimationOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/CaptureAnimationOverlay;->startFlashAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    .line 2362
    return-void
.end method

.method public startFlashAnimation(ZLjava/lang/Runnable;)V
    .locals 2
    .param p1, "shortFlash"    # Z
    .param p2, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2365
    new-instance v0, Lcom/android/camera/app/CameraAppUI$12;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/app/CameraAppUI$12;-><init>(Lcom/android/camera/app/CameraAppUI;Ljava/lang/Runnable;)V

    .line 2387
    .local v0, "animatorListener":Landroid/animation/Animator$AnimatorListener;
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mCaptureOverlay:Lcom/android/camera/ui/CaptureAnimationOverlay;

    invoke-virtual {v1, p1, v0}, Lcom/android/camera/ui/CaptureAnimationOverlay;->startFlashAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    .line 2388
    return-void
.end method

.method public startFlashAnimationBeforeTakePicture(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2391
    new-instance v0, Lcom/android/camera/app/CameraAppUI$13;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/app/CameraAppUI$13;-><init>(Lcom/android/camera/app/CameraAppUI;Ljava/lang/Runnable;)V

    .line 2417
    .local v0, "animatorListener":Landroid/animation/Animator$AnimatorListener;
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mCaptureOverlay:Lcom/android/camera/ui/CaptureAnimationOverlay;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CaptureAnimationOverlay;->startFlashAnimationBeforeTakePicture(Landroid/animation/Animator$AnimatorListener;)Z

    move-result v1

    return v1
.end method

.method public startSwitchCameraAnimation()V
    .locals 4

    .prologue
    .line 3772
    invoke-static {}, Lcom/android/camera/cpuboost/CpuBooster;->instance()Lcom/android/camera/cpuboost/BoostEngine;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Lcom/android/camera/cpuboost/BoostEngine;->boostInTime(I)Z

    .line 3773
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/camera/app/CameraAppUI;->mModeCoverState:I

    .line 3774
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/app/CameraAppUI;->mSwitchCameraPreviewArrived:Z

    .line 3775
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v2}, Lcom/android/camera/ui/operation/BottomBarOperation;->disableSwitchMode()V

    .line 3776
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 3777
    .local v0, "previewRect":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mCameraModuleScreenShotProvider:Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;

    const/16 v3, 0x8

    .line 3778
    invoke-interface {v2, v3}, Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;->getOriPreviewFrame(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3779
    .local v1, "previewsrc":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI;->mSwitchAnimationView:Lcom/android/camera/ui/SwitchAnimationView;

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/ui/SwitchAnimationView;->startSwitchCameraAnimation(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    .line 3781
    return-void
.end method

.method public startVideoRecordBtnAnim(I)V
    .locals 1
    .param p1, "shutterIconId"    # I

    .prologue
    .line 2934
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->startVideoBtnWithAnim(I)V

    .line 2935
    return-void
.end method

.method public stopFlashAnimationAfterTakePicture(FZ)V
    .locals 2
    .param p1, "originalBrightness"    # F
    .param p2, "needAnim"    # Z

    .prologue
    .line 2421
    sget-object v0, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "stopFlashAnimationAfterTakePicture setBrightnessLevel"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2422
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setBrightnessLevel(F)V

    .line 2423
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mCaptureOverlay:Lcom/android/camera/ui/CaptureAnimationOverlay;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/CaptureAnimationOverlay;->stopFlashAnimationAfterTakePicture(Z)V

    .line 2424
    return-void
.end method

.method public stopVideoRecordBtn(I)V
    .locals 1
    .param p1, "shutterIconId"    # I

    .prologue
    .line 2938
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->resetVideoBtnSrc(I)V

    .line 2939
    return-void
.end method

.method public syncModeOptionIndicators()V
    .locals 0

    .prologue
    .line 1915
    return-void
.end method

.method public transitionToCancel()V
    .locals 4

    .prologue
    .line 3135
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v0

    .line 3136
    .local v0, "moduleController":Lcom/android/camera/module/ModuleController;
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v1

    .line 3137
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    move-result-object v2

    const/4 v3, 0x0

    .line 3136
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/app/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;Z)V

    .line 3138
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->transitionToCancel()V

    .line 3139
    return-void
.end method

.method public transitionToCapture()V
    .locals 4

    .prologue
    .line 3118
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v0

    .line 3119
    .local v0, "moduleController":Lcom/android/camera/module/ModuleController;
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v1

    .line 3120
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    move-result-object v2

    const/4 v3, 0x0

    .line 3119
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/app/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;Z)V

    .line 3121
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->transitionToCapture()V

    .line 3122
    return-void
.end method

.method public transitionToHide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3145
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v0

    .line 3146
    .local v0, "moduleController":Lcom/android/camera/module/ModuleController;
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v1

    .line 3147
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    move-result-object v2

    .line 3146
    invoke-direct {p0, v1, v2, v3, v3}, Lcom/android/camera/app/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;ZZ)V

    .line 3148
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->transitionToHide()V

    .line 3149
    return-void
.end method

.method public transitionToIntentCaptureLayout()V
    .locals 4

    .prologue
    .line 3155
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v0

    .line 3156
    .local v0, "moduleController":Lcom/android/camera/module/ModuleController;
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v1

    .line 3157
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    move-result-object v2

    const/4 v3, 0x0

    .line 3156
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/app/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;Z)V

    .line 3158
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->transitionToIntentCaptureLayout()V

    .line 3159
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 3160
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 3161
    return-void
.end method

.method public transitionToIntentReviewLayout()V
    .locals 4

    .prologue
    .line 3167
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v0

    .line 3168
    .local v0, "moduleController":Lcom/android/camera/module/ModuleController;
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v1

    .line 3169
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    move-result-object v2

    const/4 v3, 0x0

    .line 3168
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/app/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;Z)V

    .line 3170
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->transitionToIntentReviewLayout()V

    .line 3171
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 3172
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 3176
    invoke-direct {p0}, Lcom/android/camera/app/CameraAppUI;->hideModeCover()V

    .line 3177
    return-void
.end method

.method public transitionToRecord()V
    .locals 4

    .prologue
    .line 3125
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v0

    .line 3126
    .local v0, "moduleController":Lcom/android/camera/module/ModuleController;
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v1

    .line 3127
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    move-result-object v2

    const/4 v3, 0x0

    .line 3126
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/app/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;Z)V

    .line 3128
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->transitionToRecord()V

    .line 3129
    return-void
.end method

.method public updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "thumbnailBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I

    .prologue
    .line 2270
    iget-boolean v1, p0, Lcom/android/camera/app/CameraAppUI;->mSuppressCaptureIndicator:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripLayout:Lcom/android/camera/widget/FilmstripLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mFilmstripLayout:Lcom/android/camera/widget/FilmstripLayout;

    invoke-virtual {v1}, Lcom/android/camera/widget/FilmstripLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 2282
    :cond_0
    :goto_0
    return-void

    .line 2273
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2274
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    const-string v2, "updateCaptureIndicatorThumbnail"

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 2275
    .local v0, "profile":Lcom/android/camera/stats/profiler/Profile;
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mBottomBarOperation:Lcom/android/camera/ui/operation/BottomBarOperation;

    invoke-virtual {v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->isInRecord()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2276
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/RoundedThumbnailView;->setVisibility(I)V

    .line 2278
    :cond_2
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/widget/RoundedThumbnailView;->setThumbnail(Landroid/graphics/Bitmap;I)V

    .line 2279
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/RoundedThumbnailView;->setClickable(Z)V

    .line 2280
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2281
    const/4 v0, 0x0

    .line 2282
    goto :goto_0
.end method

.method public updateModeText(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 3632
    return-void
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/camera/TextureViewHelper;->updateAspectRatio(F)V

    .line 1010
    return-void
.end method

.method public updatePreviewRect(I)V
    .locals 17
    .param p1, "mode"    # I

    .prologue
    .line 3845
    sget-object v13, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  mode ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3846
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    move/from16 v0, p1

    invoke-interface {v13, v0}, Lcom/android/camera/app/AppController;->transformModuleIndexIfNeed(I)I

    move-result v11

    .line 3847
    .local v11, "transformIndex":I
    sget-object v13, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_4x3:Lcom/android/camera/exif/Rational;

    invoke-virtual {v13}, Lcom/android/camera/exif/Rational;->toFloat()F

    move-result v8

    .line 3848
    .local v8, "ratio":F
    const v13, 0x7f0b000e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/camera/app/CameraAppUI;->getInteger(I)I

    move-result v13

    if-eq v11, v13, :cond_0

    .line 3849
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/app/CameraAppUI;->isBackFacingCamera()Z

    move-result v13

    if-eqz v13, :cond_3

    const v13, 0x7f0b000c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/camera/app/CameraAppUI;->getInteger(I)I

    move-result v13

    if-ne v11, v13, :cond_3

    .line 3850
    :cond_0
    sget-object v13, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_4x3:Lcom/android/camera/exif/Rational;

    invoke-virtual {v13}, Lcom/android/camera/exif/Rational;->toFloat()F

    move-result v8

    .line 3881
    :cond_1
    :goto_0
    const/high16 v13, -0x40800000    # -1.0f

    cmpl-float v13, v8, v13

    if-eqz v13, :cond_a

    .line 3882
    const/4 v10, 0x0

    .line 3884
    .local v10, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v13}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v14}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/camera/app/CameraProvider;->getCurrentCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPreviewSizes()Ljava/util/List;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 3888
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Lcom/android/camera/util/Size;

    invoke-interface {v10, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/android/camera/util/Size;

    float-to-double v14, v8

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Lcom/android/camera/CaptureModuleUtil;->getOptimalPreviewSize([Lcom/android/camera/util/Size;DLjava/lang/Double;)Lcom/android/camera/util/Size;

    move-result-object v9

    .line 3890
    .local v9, "size":Lcom/android/camera/util/Size;
    invoke-virtual {v9}, Lcom/android/camera/util/Size;->width()I

    move-result v7

    .line 3891
    .local v7, "previewBufferWidth":I
    invoke-virtual {v9}, Lcom/android/camera/util/Size;->height()I

    move-result v6

    .line 3899
    .end local v9    # "size":Lcom/android/camera/util/Size;
    .end local v10    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    .local v6, "previewBufferHeight":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/app/CameraAppUI;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    if-nez v13, :cond_2

    .line 3900
    new-instance v13, Lcom/android/camera/captureintent/PreviewTransformCalculator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    .line 3901
    invoke-interface {v14}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/android/camera/captureintent/PreviewTransformCalculator;-><init>(Lcom/android/camera/app/OrientationManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/camera/app/CameraAppUI;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    .line 3903
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/app/CameraAppUI;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    new-instance v14, Lcom/android/camera/util/Size;

    .line 3904
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Lcom/android/camera/util/Size;-><init>(II)V

    new-instance v15, Lcom/android/camera/util/Size;

    invoke-direct {v15, v7, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 3903
    invoke-virtual {v13, v14, v15}, Lcom/android/camera/captureintent/PreviewTransformCalculator;->toTransformMatrix(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Landroid/graphics/Matrix;

    move-result-object v12

    .line 3906
    .local v12, "transformMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/camera/app/CameraAppUI;->updatePreviewTransform(Landroid/graphics/Matrix;)V

    .line 3907
    .end local v6    # "previewBufferHeight":I
    .end local v7    # "previewBufferWidth":I
    .end local v12    # "transformMatrix":Landroid/graphics/Matrix;
    :goto_3
    return-void

    .line 3851
    :cond_3
    const v13, 0x7f0b0015

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/camera/app/CameraAppUI;->getInteger(I)I

    move-result v13

    if-ne v11, v13, :cond_4

    .line 3852
    sget-object v13, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_1x1:Lcom/android/camera/exif/Rational;

    invoke-virtual {v13}, Lcom/android/camera/exif/Rational;->toFloat()F

    move-result v8

    goto/16 :goto_0

    .line 3853
    :cond_4
    const v13, 0x7f0b0017

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/camera/app/CameraAppUI;->getInteger(I)I

    move-result v13

    if-eq v11, v13, :cond_5

    const v13, 0x7f0b0014

    .line 3854
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/camera/app/CameraAppUI;->getInteger(I)I

    move-result v13

    if-eq v11, v13, :cond_5

    const v13, 0x7f0b0016

    .line 3855
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/camera/app/CameraAppUI;->getInteger(I)I

    move-result v13

    if-ne v11, v13, :cond_6

    .line 3858
    :cond_5
    sget-object v13, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_16x9:Lcom/android/camera/exif/Rational;

    invoke-virtual {v13}, Lcom/android/camera/exif/Rational;->toFloat()F

    move-result v8

    goto/16 :goto_0

    .line 3859
    :cond_6
    const v13, 0x7f0b0011

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/camera/app/CameraAppUI;->getInteger(I)I

    move-result v13

    if-eq v11, v13, :cond_7

    const v13, 0x7f0b0012

    .line 3860
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/camera/app/CameraAppUI;->getInteger(I)I

    move-result v13

    if-ne v11, v13, :cond_8

    .line 3862
    :cond_7
    const/high16 v8, -0x40800000    # -1.0f

    goto/16 :goto_0

    .line 3866
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/app/CameraAppUI;->isBackFacingCamera()Z

    move-result v13

    if-eqz v13, :cond_9

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    .line 3868
    .local v2, "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :goto_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v13}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    .line 3869
    invoke-interface {v14}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/camera/app/CameraProvider;->getCurrentCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v14

    .line 3868
    invoke-virtual {v13, v14, v2}, Lcom/android/camera/settings/ResolutionSetting;->getPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;
    :try_end_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 3875
    .local v5, "pictureSize":Lcom/android/camera/util/Size;
    if-eqz v5, :cond_1

    .line 3876
    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v13, v14

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v8, v13, v14

    goto/16 :goto_0

    .line 3866
    .end local v2    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    .end local v5    # "pictureSize":Lcom/android/camera/util/Size;
    :cond_9
    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_4

    .line 3871
    .restart local v2    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :catch_0
    move-exception v4

    .line 3872
    .local v4, "ex":Lcom/android/camera/one/OneCameraAccessException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v13}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto/16 :goto_3

    .line 3894
    .end local v2    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    .end local v4    # "ex":Lcom/android/camera/one/OneCameraAccessException;
    :cond_a
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDefaultDisplaySize()Lcom/android/camera/util/Size;

    move-result-object v3

    .line 3895
    .local v3, "displaySize":Lcom/android/camera/util/Size;
    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v13

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 3896
    .restart local v7    # "previewBufferWidth":I
    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v13

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v6

    .restart local v6    # "previewBufferHeight":I
    goto/16 :goto_2

    .line 3885
    .end local v3    # "displaySize":Lcom/android/camera/util/Size;
    .end local v6    # "previewBufferHeight":I
    .end local v7    # "previewBufferWidth":I
    .restart local v10    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :catch_1
    move-exception v13

    goto/16 :goto_1
.end method

.method public updatePreviewTransform(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/camera/TextureViewHelper;->updateTransform(Landroid/graphics/Matrix;)V

    .line 1058
    return-void
.end method

.method public updatePreviewTransformFullscreen(Landroid/graphics/Matrix;F)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "aspectRatio"    # F

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/TextureViewHelper;->updateTransformFullScreen(Landroid/graphics/Matrix;F)V

    .line 1041
    return-void
.end method

.method public updateTwiceShotStatus(Z)V
    .locals 5
    .param p1, "isShow"    # Z

    .prologue
    const/16 v4, 0x17

    .line 3635
    sget-object v1, Lcom/android/camera/app/CameraAppUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TS] updateTwiceShotStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3637
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 3638
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    if-eqz p1, :cond_0

    .line 3639
    invoke-virtual {v0, v4}, Lcom/android/camera/ButtonManager;->showButton(I)V

    .line 3644
    :goto_0
    return-void

    .line 3641
    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    goto :goto_0
.end method

.method public updateTwiceShotWaitingMode(Z)V
    .locals 7
    .param p1, "isWaiting"    # Z

    .prologue
    const/16 v6, 0x17

    const/16 v5, 0x16

    const/16 v4, 0x13

    const/16 v3, 0x11

    const/16 v2, 0xd

    .line 3648
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 3649
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    if-eqz p1, :cond_0

    .line 3650
    invoke-virtual {v0, v4}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    .line 3651
    invoke-virtual {v0, v6}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    .line 3652
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    .line 3653
    invoke-virtual {v0, v2}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    .line 3654
    invoke-virtual {v0, v3}, Lcom/android/camera/ButtonManager;->invisibleButton(I)V

    .line 3665
    :goto_0
    return-void

    .line 3657
    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/camera/ButtonManager;->showButton(I)V

    .line 3658
    invoke-virtual {v0, v6}, Lcom/android/camera/ButtonManager;->showButton(I)V

    .line 3659
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->showButton(I)V

    .line 3660
    invoke-virtual {v0, v2}, Lcom/android/camera/ButtonManager;->showButton(I)V

    .line 3661
    invoke-virtual {v0, v3}, Lcom/android/camera/ButtonManager;->showButton(I)V

    goto :goto_0
.end method
