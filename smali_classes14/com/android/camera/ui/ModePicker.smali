.class public Lcom/android/camera/ui/ModePicker;
.super Landroid/support/v7/widget/RecyclerView;
.source "ModePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ModePicker$OnModePickedListener;,
        Lcom/android/camera/ui/ModePicker$CenterLayoutManager;,
        Lcom/android/camera/ui/ModePicker$ModeListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final DUAL_MODE_HALF:I

.field private final DUAL_MODE_OFF:I

.field private final DUAL_MODE_SUB:I

.field private final DUAL_PHOTO_INDEX:I

.field private final DUAL_VIDEO_INDEX:I

.field private final H_PADDING:I

.field private final PHOTO_INDEX:I

.field private final VIDEO_INDEX:I

.field private mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

.field private final mChangingData:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCurrentModeIndex:I

.field private mDisableAllUserInteractions:Z

.field private final mDualMode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mModeListAdapter:Lcom/android/camera/ui/ModePicker$ModeListAdapter;

.field private mOnModePickedListener:Lcom/android/camera/ui/ModePicker$OnModePickedListener;

.field private mSwipeEnabled:Z

.field private startX:I

.field private startY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ModePicker"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/ModePicker;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v3, 0x7f0b000f

    const/4 v2, 0x0

    .line 206
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 186
    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    iput-object v1, p0, Lcom/android/camera/ui/ModePicker;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 190
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/ui/ModePicker;->mChangingData:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 191
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/ui/ModePicker;->mDualMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/ModePicker;->mSwipeEnabled:Z

    .line 204
    iput-boolean v2, p0, Lcom/android/camera/ui/ModePicker;->mDisableAllUserInteractions:Z

    .line 207
    invoke-virtual {p0}, Lcom/android/camera/ui/ModePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 208
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ModePicker;->mCurrentModeIndex:I

    .line 209
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ModePicker;->PHOTO_INDEX:I

    .line 210
    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ModePicker;->VIDEO_INDEX:I

    .line 211
    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ModePicker;->DUAL_PHOTO_INDEX:I

    .line 212
    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ModePicker;->DUAL_VIDEO_INDEX:I

    .line 213
    const v1, 0x7f0803c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ModePicker;->DUAL_MODE_OFF:I

    .line 214
    const v1, 0x7f0803c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ModePicker;->DUAL_MODE_HALF:I

    .line 215
    const v1, 0x7f0803c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ModePicker;->DUAL_MODE_SUB:I

    .line 216
    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ModePicker;->H_PADDING:I

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ModePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModePicker;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/camera/ui/ModePicker;->mCurrentModeIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ModePicker;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModePicker;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker;->mDualMode:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/ModePicker;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModePicker;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/ModePicker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModePicker;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker;->mChangingData:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/ModePicker;)Lcom/android/camera/ui/ModePicker$ModeListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModePicker;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker;->mModeListAdapter:Lcom/android/camera/ui/ModePicker$ModeListAdapter;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 364
    iget-object v1, p0, Lcom/android/camera/ui/ModePicker;->mChangingData:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker;->mChangingData:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker;->mModeListAdapter:Lcom/android/camera/ui/ModePicker$ModeListAdapter;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker;->mModeListAdapter:Lcom/android/camera/ui/ModePicker$ModeListAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->close()V

    .line 466
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModePicker;->mOnModePickedListener:Lcom/android/camera/ui/ModePicker$OnModePickedListener;

    .line 467
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 468
    return-void
.end method

.method public getSwipeModeIndex(I)I
    .locals 1
    .param p1, "swipeState"    # I

    .prologue
    .line 350
    packed-switch p1, :pswitch_data_0

    .line 358
    iget v0, p0, Lcom/android/camera/ui/ModePicker;->mCurrentModeIndex:I

    :goto_0
    return v0

    .line 352
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker;->mModeListAdapter:Lcom/android/camera/ui/ModePicker$ModeListAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->getLeftModeIndex()I

    move-result v0

    goto :goto_0

    .line 355
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker;->mModeListAdapter:Lcom/android/camera/ui/ModePicker$ModeListAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->getRightModeIndex()I

    move-result v0

    goto :goto_0

    .line 350
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init(Lcom/android/camera/app/AppController;)V
    .locals 8
    .param p1, "appController"    # Lcom/android/camera/app/AppController;

    .prologue
    const-wide/16 v6, 0x0

    .line 220
    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    iput-object v1, p0, Lcom/android/camera/ui/ModePicker;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 221
    iget-object v2, p0, Lcom/android/camera/ui/ModePicker;->mDualMode:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v2

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/ModePicker;->mDualMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_camera_screen_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 223
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    new-instance v1, Lcom/android/camera/ui/ModePicker$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ModePicker$1;-><init>(Lcom/android/camera/ui/ModePicker;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModePicker;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/camera/ui/ModePicker;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 242
    invoke-virtual {p0}, Lcom/android/camera/ui/ModePicker;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 243
    invoke-virtual {p0}, Lcom/android/camera/ui/ModePicker;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 245
    new-instance v1, Lcom/android/camera/ui/ModePicker$ModeListAdapter;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/ModePicker$ModeListAdapter;-><init>(Lcom/android/camera/ui/ModePicker;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/ModePicker;->mModeListAdapter:Lcom/android/camera/ui/ModePicker$ModeListAdapter;

    .line 246
    iget-object v1, p0, Lcom/android/camera/ui/ModePicker;->mModeListAdapter:Lcom/android/camera/ui/ModePicker$ModeListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModePicker;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 249
    new-instance v0, Lcom/android/camera/ui/ModePicker$CenterLayoutManager;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ModePicker$CenterLayoutManager;-><init>(Lcom/android/camera/ui/ModePicker;Landroid/content/Context;)V

    .line 250
    .local v0, "layoutManager":Lcom/android/camera/ui/ModePicker$CenterLayoutManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModePicker$CenterLayoutManager;->setOrientation(I)V

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModePicker;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 252
    return-void

    .line 223
    .end local v0    # "layoutManager":Lcom/android/camera/ui/ModePicker$CenterLayoutManager;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isTouchView(Landroid/view/View;II)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 441
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 442
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 443
    aget v3, v0, v2

    iget v4, p0, Lcom/android/camera/ui/ModePicker;->H_PADDING:I

    sub-int/2addr v3, v4

    if-lt p2, v3, :cond_0

    aget v3, v0, v2

    iget v4, p0, Lcom/android/camera/ui/ModePicker;->H_PADDING:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-lt p2, v3, :cond_2

    :cond_0
    move v1, v2

    .line 449
    :cond_1
    :goto_0
    return v1

    .line 446
    :cond_2
    aget v3, v0, v1

    iget v4, p0, Lcom/android/camera/ui/ModePicker;->H_PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    if-lt p3, v3, :cond_3

    aget v3, v0, v1

    iget v4, p0, Lcom/android/camera/ui/ModePicker;->H_PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-lt p3, v3, :cond_1

    :cond_3
    move v1, v2

    .line 447
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/camera/ui/ModePicker;->mOnModePickedListener:Lcom/android/camera/ui/ModePicker$OnModePickedListener;

    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ModePicker;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;

    .line 455
    .local v0, "vh":Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;
    iget v1, p0, Lcom/android/camera/ui/ModePicker;->mCurrentModeIndex:I

    iget v2, v0, Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;->mModeIndex:I

    if-eq v1, v2, :cond_0

    .line 456
    iget-object v1, p0, Lcom/android/camera/ui/ModePicker;->mOnModePickedListener:Lcom/android/camera/ui/ModePicker$OnModePickedListener;

    iget v2, v0, Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;->mModeIndex:I

    invoke-interface {v1, v2}, Lcom/android/camera/ui/ModePicker$OnModePickedListener;->onModePicked(I)V

    .line 459
    .end local v0    # "vh":Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 314
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/RecyclerView;->onLayout(ZIIII)V

    .line 315
    new-instance v0, Lcom/android/camera/ui/ModePicker$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ModePicker$2;-><init>(Lcom/android/camera/ui/ModePicker;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/camera/ui/ModePicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 328
    return-void
.end method

.method public onModeSelected(I)V
    .locals 5
    .param p1, "modeIndex"    # I

    .prologue
    const/4 v4, -0x1

    .line 331
    iget v3, p0, Lcom/android/camera/ui/ModePicker;->mCurrentModeIndex:I

    if-eq v3, p1, :cond_1

    .line 332
    iget v1, p0, Lcom/android/camera/ui/ModePicker;->mCurrentModeIndex:I

    .line 333
    .local v1, "previousModeIndex":I
    iput p1, p0, Lcom/android/camera/ui/ModePicker;->mCurrentModeIndex:I

    .line 335
    iget-object v3, p0, Lcom/android/camera/ui/ModePicker;->mModeListAdapter:Lcom/android/camera/ui/ModePicker$ModeListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->getItemPosition(I)I

    move-result v2

    .line 336
    .local v2, "previousPosition":I
    if-eq v2, v4, :cond_0

    .line 337
    iget-object v3, p0, Lcom/android/camera/ui/ModePicker;->mModeListAdapter:Lcom/android/camera/ui/ModePicker$ModeListAdapter;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->notifyItemChanged(I)V

    .line 340
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/ModePicker;->mModeListAdapter:Lcom/android/camera/ui/ModePicker$ModeListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->getItemPosition(I)I

    move-result v0

    .line 341
    .local v0, "currentPosition":I
    if-eq v0, v4, :cond_1

    .line 342
    iget-object v3, p0, Lcom/android/camera/ui/ModePicker;->mModeListAdapter:Lcom/android/camera/ui/ModePicker$ModeListAdapter;

    invoke-virtual {v3, v0}, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->notifyItemChanged(I)V

    .line 343
    invoke-virtual {p0}, Lcom/android/camera/ui/ModePicker;->stopScroll()V

    .line 344
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModePicker;->smoothScrollToPosition(I)V

    .line 347
    .end local v0    # "currentPosition":I
    .end local v1    # "previousModeIndex":I
    .end local v2    # "previousPosition":I
    :cond_1
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 4
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 260
    const-string v0, "pref_camera_screen_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/camera/ui/ModePicker;->mDualMode:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker;->mDualMode:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v2, "default_scope"

    const-string v3, "pref_camera_screen_key"

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 263
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker;->mModeListAdapter:Lcom/android/camera/ui/ModePicker$ModeListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ModePicker;->mModeListAdapter:Lcom/android/camera/ui/ModePicker$ModeListAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ModePicker;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ModePicker;->setModeList(Ljava/util/List;Lcom/android/camera/one/OneCamera$Facing;)V

    .line 266
    :cond_0
    return-void

    .line 263
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 384
    iget-boolean v10, p0, Lcom/android/camera/ui/ModePicker;->mSwipeEnabled:Z

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/android/camera/ui/ModePicker;->mDisableAllUserInteractions:Z

    if-eqz v10, :cond_1

    .line 385
    :cond_0
    const/4 v10, 0x1

    .line 438
    :goto_0
    return v10

    .line 386
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    packed-switch v10, :pswitch_data_0

    .line 438
    :cond_2
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 389
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v2, v10

    .line 390
    .local v2, "endX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v3, v10

    .line 392
    .local v3, "endY":I
    iget v10, p0, Lcom/android/camera/ui/ModePicker;->startX:I

    sub-int v10, v2, v10

    const/16 v11, 0xa

    if-ge v10, v11, :cond_2

    iget v10, p0, Lcom/android/camera/ui/ModePicker;->startY:I

    sub-int v10, v3, v10

    const/16 v11, 0xa

    if-ge v10, v11, :cond_2

    .line 393
    invoke-virtual {p0}, Lcom/android/camera/ui/ModePicker;->getChildCount()I

    move-result v0

    .line 394
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v0, :cond_2

    .line 395
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/ModePicker;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 396
    .local v9, "view":Landroid/view/View;
    invoke-virtual {p0, v9, v2, v3}, Lcom/android/camera/ui/ModePicker;->isTouchView(Landroid/view/View;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 397
    invoke-virtual {p0, v9}, Lcom/android/camera/ui/ModePicker;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;

    .line 398
    .local v8, "vh":Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;
    iget v10, p0, Lcom/android/camera/ui/ModePicker;->mCurrentModeIndex:I

    iget v11, v8, Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;->mModeIndex:I

    if-eq v10, v11, :cond_2

    .line 399
    iget-object v10, p0, Lcom/android/camera/ui/ModePicker;->mOnModePickedListener:Lcom/android/camera/ui/ModePicker$OnModePickedListener;

    iget v11, v8, Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;->mModeIndex:I

    invoke-interface {v10, v11}, Lcom/android/camera/ui/ModePicker$OnModePickedListener;->onModePicked(I)V

    goto :goto_1

    .line 394
    .end local v8    # "vh":Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 408
    .end local v0    # "count":I
    .end local v2    # "endX":I
    .end local v3    # "endY":I
    .end local v4    # "i":I
    .end local v9    # "view":Landroid/view/View;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v10, v10

    iput v10, p0, Lcom/android/camera/ui/ModePicker;->startX:I

    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v10, v10

    iput v10, p0, Lcom/android/camera/ui/ModePicker;->startY:I

    goto :goto_1

    .line 413
    :pswitch_2
    iget v10, p0, Lcom/android/camera/ui/ModePicker;->startX:I

    if-lez v10, :cond_2

    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v6, v10

    .line 415
    .local v6, "moveX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v7, v10

    .line 416
    .local v7, "moveY":I
    iget v10, p0, Lcom/android/camera/ui/ModePicker;->startX:I

    sub-int v1, v6, v10

    .line 417
    .local v1, "deltaX":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/16 v11, 0x28

    if-le v10, v11, :cond_2

    .line 418
    if-lez v1, :cond_5

    .line 419
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ModePicker;->getSwipeModeIndex(I)I

    move-result v5

    .line 420
    .local v5, "moduleToTransitionTo":I
    iget v10, p0, Lcom/android/camera/ui/ModePicker;->mCurrentModeIndex:I

    if-eq v10, v5, :cond_4

    .line 421
    iget-object v10, p0, Lcom/android/camera/ui/ModePicker;->mOnModePickedListener:Lcom/android/camera/ui/ModePicker$OnModePickedListener;

    invoke-interface {v10, v5}, Lcom/android/camera/ui/ModePicker$OnModePickedListener;->onModePicked(I)V

    .line 423
    :cond_4
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/camera/ui/ModePicker;->startX:I

    .line 424
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/camera/ui/ModePicker;->startY:I

    goto/16 :goto_1

    .line 426
    .end local v5    # "moduleToTransitionTo":I
    :cond_5
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ModePicker;->getSwipeModeIndex(I)I

    move-result v5

    .line 427
    .restart local v5    # "moduleToTransitionTo":I
    iget v10, p0, Lcom/android/camera/ui/ModePicker;->mCurrentModeIndex:I

    if-eq v10, v5, :cond_6

    .line 428
    iget-object v10, p0, Lcom/android/camera/ui/ModePicker;->mOnModePickedListener:Lcom/android/camera/ui/ModePicker$OnModePickedListener;

    invoke-interface {v10, v5}, Lcom/android/camera/ui/ModePicker$OnModePickedListener;->onModePicked(I)V

    .line 430
    :cond_6
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/view/MotionEvent;->setAction(I)V

    .line 431
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/camera/ui/ModePicker;->startX:I

    .line 432
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/camera/ui/ModePicker;->startY:I

    goto/16 :goto_1

    .line 386
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setDisableAllUserInteractions(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/android/camera/ui/ModePicker;->mDisableAllUserInteractions:Z

    .line 274
    return-void
.end method

.method public setModeList(Ljava/util/List;Lcom/android/camera/one/OneCamera$Facing;)V
    .locals 9
    .param p2, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "modeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, -0x1

    .line 276
    iput-object p2, p0, Lcom/android/camera/ui/ModePicker;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 277
    iget-object v6, p0, Lcom/android/camera/ui/ModePicker;->mDualMode:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v6

    .line 278
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/ui/ModePicker;->mDualMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v7, p0, Lcom/android/camera/ui/ModePicker;->DUAL_MODE_HALF:I

    if-eq v5, v7, :cond_0

    iget-object v5, p0, Lcom/android/camera/ui/ModePicker;->mDualMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 279
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v7, p0, Lcom/android/camera/ui/ModePicker;->DUAL_MODE_SUB:I

    if-ne v5, v7, :cond_3

    .line 280
    :cond_0
    iget v5, p0, Lcom/android/camera/ui/ModePicker;->PHOTO_INDEX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 281
    .local v0, "photoIndex":I
    if-eq v0, v8, :cond_1

    .line 282
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 283
    .local v3, "remove":Ljava/lang/Integer;
    iget v5, p0, Lcom/android/camera/ui/ModePicker;->DUAL_PHOTO_INDEX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v0, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 285
    .end local v3    # "remove":Ljava/lang/Integer;
    :cond_1
    iget v5, p0, Lcom/android/camera/ui/ModePicker;->VIDEO_INDEX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 286
    .local v4, "videoIndex":I
    if-eq v4, v8, :cond_2

    .line 287
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 288
    .restart local v3    # "remove":Ljava/lang/Integer;
    iget v5, p0, Lcom/android/camera/ui/ModePicker;->DUAL_VIDEO_INDEX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 302
    .end local v0    # "photoIndex":I
    .end local v3    # "remove":Ljava/lang/Integer;
    .end local v4    # "videoIndex":I
    :cond_2
    :goto_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    iget-object v6, p0, Lcom/android/camera/ui/ModePicker;->mChangingData:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v6

    .line 305
    :try_start_1
    iget-object v5, p0, Lcom/android/camera/ui/ModePicker;->mChangingData:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 306
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 308
    iget-object v5, p0, Lcom/android/camera/ui/ModePicker;->mModeListAdapter:Lcom/android/camera/ui/ModePicker$ModeListAdapter;

    invoke-virtual {v5, p1}, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->setList(Ljava/util/List;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/camera/ui/ModePicker;->requestLayout()V

    .line 310
    return-void

    .line 291
    :cond_3
    :try_start_2
    iget v5, p0, Lcom/android/camera/ui/ModePicker;->DUAL_PHOTO_INDEX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 292
    .local v1, "pipPhotoIndex":I
    if-eq v1, v8, :cond_4

    .line 293
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 294
    .restart local v3    # "remove":Ljava/lang/Integer;
    iget v5, p0, Lcom/android/camera/ui/ModePicker;->PHOTO_INDEX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 296
    .end local v3    # "remove":Ljava/lang/Integer;
    :cond_4
    iget v5, p0, Lcom/android/camera/ui/ModePicker;->DUAL_VIDEO_INDEX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 297
    .local v2, "pipVideoIndex":I
    if-eq v2, v8, :cond_2

    .line 298
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 299
    .restart local v3    # "remove":Ljava/lang/Integer;
    iget v5, p0, Lcom/android/camera/ui/ModePicker;->VIDEO_INDEX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 302
    .end local v1    # "pipPhotoIndex":I
    .end local v2    # "pipVideoIndex":I
    .end local v3    # "remove":Ljava/lang/Integer;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 306
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method

.method public setOnModePickedListener(Lcom/android/camera/ui/ModePicker$OnModePickedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/ModePicker$OnModePickedListener;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/camera/ui/ModePicker;->mOnModePickedListener:Lcom/android/camera/ui/ModePicker$OnModePickedListener;

    .line 256
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/android/camera/ui/ModePicker;->mSwipeEnabled:Z

    .line 270
    return-void
.end method
