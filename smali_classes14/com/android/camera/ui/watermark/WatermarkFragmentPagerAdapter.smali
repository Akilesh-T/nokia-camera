.class public Lcom/android/camera/ui/watermark/WatermarkFragmentPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "WatermarkFragmentPagerAdapter.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mListener:Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;

.field private mSettingsManager:Lcom/android/camera/settings/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Watermark.PagerAdapter"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/watermark/WatermarkFragmentPagerAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "listener"    # Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 23
    iput-object p2, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentPagerAdapter;->mListener:Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;

    .line 24
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraServicesImpl;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentPagerAdapter;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 25
    sget-object v0, Lcom/android/camera/ui/watermark/WatermarkFragmentPagerAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "WatermarkFragmentPagerAdapter initialize"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/camera/watermark/WatermarkViewData;->STYLE:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 8
    .param p1, "arg0"    # I

    .prologue
    const/4 v7, -0x1

    .line 30
    sget-object v3, Lcom/android/camera/ui/watermark/WatermarkFragmentPagerAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getItem = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 31
    sget-object v3, Lcom/android/camera/watermark/WatermarkViewData;->STYLE:[I

    array-length v3, v3

    if-ge p1, v3, :cond_0

    .line 32
    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentPagerAdapter;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v4, "default_scope"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pref_watermark_params_pos_x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v1

    .line 33
    .local v1, "xPos":I
    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentPagerAdapter;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v4, "default_scope"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pref_watermark_params_pos_y"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v2

    .line 34
    .local v2, "yPos":I
    sget-object v3, Lcom/android/camera/watermark/WatermarkViewData;->STYLE:[I

    aget v3, v3, p1

    invoke-static {p1, v3, v1, v2}, Lcom/android/camera/ui/watermark/WatermarkFragment;->newInstance(IIII)Lcom/android/camera/ui/watermark/WatermarkFragment;

    move-result-object v0

    .line 38
    .end local v1    # "xPos":I
    .end local v2    # "yPos":I
    :goto_0
    return-object v0

    .line 37
    :cond_0
    sget-object v3, Lcom/android/camera/ui/watermark/WatermarkFragmentPagerAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getItem Error => WatermarkViewData.STYLE.length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/camera/watermark/WatermarkViewData;->STYLE:[I

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 44
    sget-object v1, Lcom/android/camera/ui/watermark/WatermarkFragmentPagerAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instantiateItem = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/watermark/WatermarkFragment;

    .line 46
    .local v0, "fragment":Lcom/android/camera/ui/watermark/WatermarkFragment;
    if-eqz v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentPagerAdapter;->mListener:Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkFragment;->setOnFragmentActionListener(Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;)V

    .line 48
    invoke-virtual {v0}, Lcom/android/camera/ui/watermark/WatermarkFragment;->notifyFragmentCreated()V

    .line 50
    :cond_0
    return-object v0
.end method
