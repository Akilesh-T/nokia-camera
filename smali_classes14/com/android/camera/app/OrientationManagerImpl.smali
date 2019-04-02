.class public Lcom/android/camera/app/OrientationManagerImpl;
.super Ljava/lang/Object;
.source "OrientationManagerImpl.java"

# interfaces
.implements Lcom/android/camera/app/OrientationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;
    }
.end annotation


# static fields
.field private static final ORIENTATION_HYSTERESIS:I = 0x5

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private final mIsDefaultToPortrait:Z

.field private mLastDeviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationListener:Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;

.field private mOrientationLocked:Z

.field private final mProfiler:Lcom/android/camera/stats/profiler/Profiler;

.field private mRotationLockedSetting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "OrientMgrImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/app/OrientationManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    iput-object v0, p0, Lcom/android/camera/app/OrientationManagerImpl;->mLastDeviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 67
    iput-boolean v1, p0, Lcom/android/camera/app/OrientationManagerImpl;->mOrientationLocked:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/camera/app/OrientationManagerImpl;->mRotationLockedSetting:Z

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/OrientationManagerImpl;->mListeners:Ljava/util/List;

    .line 77
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/OrientationManagerImpl;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 86
    iput-object p1, p0, Lcom/android/camera/app/OrientationManagerImpl;->mActivity:Landroid/app/Activity;

    .line 87
    iput-object p2, p0, Lcom/android/camera/app/OrientationManagerImpl;->mHandler:Landroid/os/Handler;

    .line 88
    invoke-static {p1}, Lcom/android/camera/app/OrientationManagerImpl;->isDefaultToPortrait(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/app/OrientationManagerImpl;->mIsDefaultToPortrait:Z

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/app/OrientationManagerImpl;)Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/OrientationManagerImpl;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/app/OrientationManagerImpl;->mLastDeviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/app/OrientationManagerImpl;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/OrientationManagerImpl;
    .param p1, "x1"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/app/OrientationManagerImpl;->mLastDeviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/app/OrientationManager$DeviceOrientation;I)Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/android/camera/app/OrientationManagerImpl;->roundOrientation(Lcom/android/camera/app/OrientationManager$DeviceOrientation;I)Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/camera/app/OrientationManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/app/OrientationManagerImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/OrientationManagerImpl;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/app/OrientationManagerImpl;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/app/OrientationManagerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/OrientationManagerImpl;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/app/OrientationManagerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private calculateCurrentScreenOrientation()I
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 196
    iget-object v4, p0, Lcom/android/camera/app/OrientationManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/camera/app/OrientationManagerImpl;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 198
    .local v0, "displayRotation":I
    const/16 v4, 0xb4

    if-ge v0, v4, :cond_0

    move v1, v2

    .line 199
    .local v1, "standard":Z
    :goto_0
    iget-object v4, p0, Lcom/android/camera/app/OrientationManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 201
    if-eqz v1, :cond_1

    .line 212
    :goto_1
    return v3

    .end local v1    # "standard":Z
    :cond_0
    move v1, v3

    .line 198
    goto :goto_0

    .line 201
    .restart local v1    # "standard":Z
    :cond_1
    const/16 v3, 0x8

    goto :goto_1

    .line 205
    :cond_2
    const/16 v4, 0x5a

    if-eq v0, v4, :cond_3

    const/16 v4, 0x10e

    if-ne v0, v4, :cond_4

    .line 210
    :cond_3
    if-nez v1, :cond_5

    move v1, v2

    .line 212
    :cond_4
    :goto_2
    if-eqz v1, :cond_6

    :goto_3
    move v3, v2

    goto :goto_1

    :cond_5
    move v1, v3

    .line 210
    goto :goto_2

    .line 212
    :cond_6
    const/16 v2, 0x9

    goto :goto_3
.end method

.method private static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 273
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 274
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 275
    .local v0, "rotation":I
    packed-switch v0, :pswitch_data_0

    .line 281
    :goto_0
    :pswitch_0
    return v1

    .line 277
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 278
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 279
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static isDefaultToPortrait(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 292
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/util/AndroidServices;->provideWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    .line 293
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 294
    .local v0, "currentDisplay":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 295
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 296
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 298
    .local v4, "orientation":I
    if-eqz v4, :cond_0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 299
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 300
    .local v3, "naturalWidth":I
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 305
    .local v2, "naturalHeight":I
    :goto_0
    if-ge v3, v2, :cond_2

    const/4 v5, 0x1

    :goto_1
    return v5

    .line 302
    .end local v2    # "naturalHeight":I
    .end local v3    # "naturalWidth":I
    :cond_1
    iget v3, v1, Landroid/graphics/Point;->y:I

    .line 303
    .restart local v3    # "naturalWidth":I
    iget v2, v1, Landroid/graphics/Point;->x:I

    .restart local v2    # "naturalHeight":I
    goto :goto_0

    .line 305
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static roundOrientation(Lcom/android/camera/app/OrientationManager$DeviceOrientation;I)Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .locals 4
    .param p0, "oldDeviceOrientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p1, "newRawOrientation"    # I

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v3

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 253
    .local v0, "dist":I
    rsub-int v3, v0, 0x168

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 254
    const/16 v3, 0x32

    if-lt v0, v3, :cond_1

    const/4 v1, 0x1

    .line 256
    .local v1, "isOrientationChanged":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 257
    add-int/lit8 v3, p1, 0x2d

    div-int/lit8 v3, v3, 0x5a

    mul-int/lit8 v3, v3, 0x5a

    rem-int/lit16 v2, v3, 0x168

    .line 258
    .local v2, "newRoundedOrientation":I
    sparse-switch v2, :sswitch_data_0

    .line 269
    .end local v2    # "newRoundedOrientation":I
    .end local p0    # "oldDeviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    :cond_0
    :goto_1
    return-object p0

    .line 254
    .end local v1    # "isOrientationChanged":Z
    .restart local p0    # "oldDeviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 260
    .restart local v1    # "isOrientationChanged":Z
    .restart local v2    # "newRoundedOrientation":I
    :sswitch_0
    sget-object p0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    goto :goto_1

    .line 262
    :sswitch_1
    sget-object p0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_90:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    goto :goto_1

    .line 264
    :sswitch_2
    sget-object p0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_180:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    goto :goto_1

    .line 266
    :sswitch_3
    sget-object p0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_270:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    goto :goto_1

    .line 258
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public addOnOrientationChangeListener(Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/camera/app/OrientationManagerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/OrientationManagerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDeviceNaturalOrientation()Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/app/OrientationManagerImpl;->mIsDefaultToPortrait:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;->PORTRAIT:Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;->LANDSCAPE:Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;

    goto :goto_0
.end method

.method public getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/app/OrientationManagerImpl;->mLastDeviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    return-object v0
.end method

.method public getDisplayRotation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    invoke-static {v0}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->from(I)Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v0

    return-object v0
.end method

.method public isInLandscape()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 147
    iget-object v2, p0, Lcom/android/camera/app/OrientationManagerImpl;->mLastDeviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v0

    .line 148
    .local v0, "roundedOrientationDegrees":I
    iget-boolean v2, p0, Lcom/android/camera/app/OrientationManagerImpl;->mIsDefaultToPortrait:Z

    if-eqz v2, :cond_1

    .line 149
    rem-int/lit16 v2, v0, 0xb4

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_2

    .line 157
    :cond_0
    :goto_0
    return v1

    .line 153
    :cond_1
    rem-int/lit16 v2, v0, 0xb4

    if-eqz v2, :cond_0

    .line 157
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInPortrait()Z
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/camera/app/OrientationManagerImpl;->isInLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOrientationLocked()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/android/camera/app/OrientationManagerImpl;->mOrientationLocked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/app/OrientationManagerImpl;->mRotationLockedSetting:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockOrientation()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/camera/app/OrientationManagerImpl;->mOrientationListener:Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/camera/app/OrientationManagerImpl;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v2, "OrientationManagerImpl - pause"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 109
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v1, p0, Lcom/android/camera/app/OrientationManagerImpl;->mOrientationListener:Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;->disable()V

    .line 110
    const-string v1, "mOrientationListener disable"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 112
    .end local v0    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :cond_0
    return-void
.end method

.method public removeOnOrientationChangeListener(Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/app/OrientationManagerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/android/camera/app/OrientationManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Removing non-existing listener."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 92
    iget-object v4, p0, Lcom/android/camera/app/OrientationManagerImpl;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v5, "OrientationManagerImpl - resume"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 93
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v4, p0, Lcom/android/camera/app/OrientationManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 94
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v4, "getContentResolver"

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 95
    const-string v4, "accelerometer_rotation"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/app/OrientationManagerImpl;->mRotationLockedSetting:Z

    .line 97
    const-string v2, "Settings.System.getInt - ACCELEROMETER_ROTATION"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/android/camera/app/OrientationManagerImpl;->mOrientationListener:Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;

    if-nez v2, :cond_0

    .line 99
    new-instance v2, Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;

    iget-object v3, p0, Lcom/android/camera/app/OrientationManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3}, Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;-><init>(Lcom/android/camera/app/OrientationManagerImpl;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/app/OrientationManagerImpl;->mOrientationListener:Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;

    .line 100
    const-string v2, "mOrientationListener init"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/android/camera/app/OrientationManagerImpl;->mOrientationListener:Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;

    invoke-virtual {v2}, Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;->enable()V

    .line 103
    const-string v2, "mOrientationListener enable"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 104
    return-void

    :cond_1
    move v2, v3

    .line 95
    goto :goto_0
.end method

.method public unlockOrientation()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method
