.class public Lcom/android/camera/ui/watermark/WatermarkViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "WatermarkViewPager.java"

# interfaces
.implements Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mAdapter:Lcom/android/camera/ui/watermark/WatermarkFragmentPagerAdapter;

.field private mEditListener:Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mFragmentMappingTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/camera/ui/watermark/WatermarkFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mFreeTextInfoData:Lcom/android/camera/watermark/FreeTextInfoData;

.field private mIsFrontFacing:Z

.field private mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

.field private mWatermarkInfoData:Lcom/android/camera/watermark/WatermarkInfoData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Watermark.ViewPager"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mIsFrontFacing:Z

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    .line 33
    invoke-direct {p0, p1}, Lcom/android/camera/ui/watermark/WatermarkViewPager;->initWatermarkFragmentPagerAdapter(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private initWatermarkFragmentPagerAdapter(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    :try_start_0
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 40
    new-instance v1, Lcom/android/camera/ui/watermark/WatermarkFragmentPagerAdapter;

    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-direct {v1, v2, p0}, Lcom/android/camera/ui/watermark/WatermarkFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;)V

    iput-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mAdapter:Lcom/android/camera/ui/watermark/WatermarkFragmentPagerAdapter;

    .line 41
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mAdapter:Lcom/android/camera/ui/watermark/WatermarkFragmentPagerAdapter;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/watermark/WatermarkViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/camera/ui/watermark/WatermarkViewPager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initWatermarkFragmentPagerAdapter fail => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCurreWatermarkFragment()Lcom/android/camera/ui/watermark/WatermarkFragment;
    .locals 4

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/camera/ui/watermark/WatermarkViewPager;->getCurrentItem()I

    move-result v0

    .line 72
    .local v0, "current_index":I
    sget-object v1, Lcom/android/camera/ui/watermark/WatermarkViewPager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurreWatermarkFragment-index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/watermark/WatermarkFragment;

    .line 76
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 6

    .prologue
    .line 166
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onDetachedFromWindow()V

    .line 167
    sget-object v3, Lcom/android/camera/ui/watermark/WatermarkViewPager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDetachedFromWindow-mapping query => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 169
    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/watermark/WatermarkFragment;

    .line 170
    .local v0, "fragment":Lcom/android/camera/ui/watermark/WatermarkFragment;
    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 171
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "fragment":Lcom/android/camera/ui/watermark/WatermarkFragment;
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method public onFragmentCreated(ILcom/android/camera/ui/watermark/WatermarkFragment;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "fragment"    # Lcom/android/camera/ui/watermark/WatermarkFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mWatermarkInfoData:Lcom/android/camera/watermark/WatermarkInfoData;

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/watermark/WatermarkFragment;->setWatermarkInfoData(Lcom/android/camera/watermark/WatermarkInfoData;)V

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/watermark/WatermarkFragment;->setLocationInfoData(Lcom/android/camera/watermark/LocationInfoData;)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFreeTextInfoData:Lcom/android/camera/watermark/FreeTextInfoData;

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/watermark/WatermarkFragment;->setFreeTextInfoData(Lcom/android/camera/watermark/FreeTextInfoData;)V

    .line 55
    iget-boolean v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mIsFrontFacing:Z

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/watermark/WatermarkFragment;->setCameraFacing(Z)V

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mEditListener:Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/watermark/WatermarkFragment;->setOnEditActionListener(Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFragmentCreated-add mapping success => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method public onFragmentDestroyed(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 66
    sget-object v0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFragmentCreated-delete mapping success => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public setCameraFacing(Z)V
    .locals 4
    .param p1, "isFrontFacing"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mIsFrontFacing:Z

    .line 120
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 121
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/watermark/WatermarkFragment;

    .line 123
    .local v0, "fragment":Lcom/android/camera/ui/watermark/WatermarkFragment;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/watermark/WatermarkFragment;->setCameraFacing(Z)V

    .line 121
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "fragment":Lcom/android/camera/ui/watermark/WatermarkFragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setFreeTextInfoData(Lcom/android/camera/watermark/FreeTextInfoData;)V
    .locals 4
    .param p1, "freeTextInfoData"    # Lcom/android/camera/watermark/FreeTextInfoData;

    .prologue
    .line 106
    if-nez p1, :cond_1

    .line 116
    :cond_0
    return-void

    .line 107
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFreeTextInfoData:Lcom/android/camera/watermark/FreeTextInfoData;

    .line 108
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    .line 109
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/watermark/WatermarkFragment;

    .line 111
    .local v0, "fragment":Lcom/android/camera/ui/watermark/WatermarkFragment;
    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/watermark/WatermarkFragment;->setFreeTextInfoData(Lcom/android/camera/watermark/FreeTextInfoData;)V

    .line 109
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setLocationInfoData(Lcom/android/camera/watermark/LocationInfoData;)V
    .locals 4
    .param p1, "locationInfoData"    # Lcom/android/camera/watermark/LocationInfoData;

    .prologue
    .line 93
    if-nez p1, :cond_1

    .line 103
    :cond_0
    return-void

    .line 94
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

    .line 95
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    .line 96
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/watermark/WatermarkFragment;

    .line 98
    .local v0, "fragment":Lcom/android/camera/ui/watermark/WatermarkFragment;
    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/watermark/WatermarkFragment;->setLocationInfoData(Lcom/android/camera/watermark/LocationInfoData;)V

    .line 96
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setOnEditActionListener(Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;

    .prologue
    .line 131
    if-nez p1, :cond_1

    .line 141
    :cond_0
    return-void

    .line 132
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mEditListener:Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;

    .line 133
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    .line 134
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/watermark/WatermarkFragment;

    .line 136
    .local v0, "fragment":Lcom/android/camera/ui/watermark/WatermarkFragment;
    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/watermark/WatermarkFragment;->setOnEditActionListener(Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;)V

    .line 134
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setWatermarkInfoData(Lcom/android/camera/watermark/WatermarkInfoData;)V
    .locals 4
    .param p1, "watermarkInfoData"    # Lcom/android/camera/watermark/WatermarkInfoData;

    .prologue
    .line 80
    if-nez p1, :cond_1

    .line 90
    :cond_0
    return-void

    .line 81
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mWatermarkInfoData:Lcom/android/camera/watermark/WatermarkInfoData;

    .line 82
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    .line 83
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/watermark/WatermarkFragment;

    .line 85
    .local v0, "fragment":Lcom/android/camera/ui/watermark/WatermarkFragment;
    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/watermark/WatermarkFragment;->setWatermarkInfoData(Lcom/android/camera/watermark/WatermarkInfoData;)V

    .line 83
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public updateWatermarkPosition()V
    .locals 4

    .prologue
    .line 144
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 145
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 146
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkViewPager;->mFragmentMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/watermark/WatermarkFragment;

    .line 147
    .local v0, "fragment":Lcom/android/camera/ui/watermark/WatermarkFragment;
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/android/camera/ui/watermark/WatermarkFragment;->updateWatermarkPosition()V

    .line 145
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "fragment":Lcom/android/camera/ui/watermark/WatermarkFragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
