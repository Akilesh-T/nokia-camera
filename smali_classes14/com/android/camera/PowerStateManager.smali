.class public Lcom/android/camera/PowerStateManager;
.super Ljava/lang/Object;
.source "PowerStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PowerStateManager$PowerStateListener;,
        Lcom/android/camera/PowerStateManager$PowerStateReceiver;
    }
.end annotation


# static fields
.field public static final POWER_STATE_LOW:I = 0x1

.field public static final POWER_STATE_NORMAL:I


# instance fields
.field private final BATT_FALSHLIGHT_LEVEL:I

.field private final TAG:Lcom/android/camera/debug/Log$Tag;

.field private final USE_TOAST_ALEART:Z

.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private final mHandler:Landroid/os/Handler;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/PowerStateManager$PowerStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLowPowerAlertDialog:Landroid/app/AlertDialog;

.field private mLowPowerToast:Landroid/widget/Toast;

.field private mPowerState:I

.field private mPowerStateReceiver:Lcom/android/camera/PowerStateManager$PowerStateReceiver;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Landroid/os/Handler;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PowerStateManager"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/PowerStateManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 33
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/camera/PowerStateManager;->BATT_FALSHLIGHT_LEVEL:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PowerStateManager;->USE_TOAST_ALEART:Z

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PowerStateManager;->mPowerState:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PowerStateManager;->mPowerStateReceiver:Lcom/android/camera/PowerStateManager$PowerStateReceiver;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PowerStateManager;->mListeners:Ljava/util/List;

    .line 92
    iput-object p1, p0, Lcom/android/camera/PowerStateManager;->mActivity:Lcom/android/camera/CameraActivity;

    .line 93
    iput-object p2, p0, Lcom/android/camera/PowerStateManager;->mHandler:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PowerStateManager;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PowerStateManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/PowerStateManager;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/PowerStateManager;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PowerStateManager;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/camera/PowerStateManager;->updatePowerState(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/PowerStateManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PowerStateManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/PowerStateManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updatePowerState(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x0

    .line 126
    if-nez p1, :cond_1

    .line 182
    :cond_0
    return-void

    .line 127
    :cond_1
    const/4 v4, 0x0

    .line 131
    .local v4, "state":I
    const-string v5, "level"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 132
    .local v0, "level":I
    const-string v5, "scale"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 133
    .local v3, "scale":I
    if-ltz v0, :cond_0

    if-lez v3, :cond_0

    .line 135
    mul-int/lit8 v5, v0, 0x64

    div-int v2, v5, v3

    .line 136
    .local v2, "percent":I
    iget-object v5, p0, Lcom/android/camera/PowerStateManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "percent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    if-ltz v2, :cond_2

    const/16 v5, 0x64

    if-gt v2, v5, :cond_2

    .line 138
    const/16 v5, 0xf

    if-gt v2, v5, :cond_2

    .line 139
    const/4 v4, 0x1

    .line 142
    :cond_2
    iget v5, p0, Lcom/android/camera/PowerStateManager;->mPowerState:I

    if-eq v4, v5, :cond_0

    .line 144
    iput v4, p0, Lcom/android/camera/PowerStateManager;->mPowerState:I

    .line 145
    iget-object v5, p0, Lcom/android/camera/PowerStateManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPowerState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/PowerStateManager;->mPowerState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    iget v5, p0, Lcom/android/camera/PowerStateManager;->mPowerState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/camera/PowerStateManager;->mLowPowerAlertDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_5

    .line 148
    iget-object v5, p0, Lcom/android/camera/PowerStateManager;->mLowPowerToast:Landroid/widget/Toast;

    if-eqz v5, :cond_3

    .line 149
    iget-object v5, p0, Lcom/android/camera/PowerStateManager;->mLowPowerToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->cancel()V

    .line 150
    iput-object v8, p0, Lcom/android/camera/PowerStateManager;->mLowPowerToast:Landroid/widget/Toast;

    .line 152
    :cond_3
    new-instance v5, Lcom/android/camera/ui/RotateTextToast;

    iget-object v6, p0, Lcom/android/camera/PowerStateManager;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v7, p0, Lcom/android/camera/PowerStateManager;->mActivity:Lcom/android/camera/CameraActivity;

    const v8, 0x7f0800d4

    invoke-virtual {v7, v8}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/PowerStateManager;->mActivity:Lcom/android/camera/CameraActivity;

    .line 153
    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 179
    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/android/camera/PowerStateManager;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PowerStateManager$PowerStateListener;

    .line 180
    .local v1, "listener":Lcom/android/camera/PowerStateManager$PowerStateListener;
    invoke-virtual {p0}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v6

    invoke-interface {v1, v6}, Lcom/android/camera/PowerStateManager$PowerStateListener;->onPowerStateChanged(Z)V

    goto :goto_1

    .line 168
    .end local v1    # "listener":Lcom/android/camera/PowerStateManager$PowerStateListener;
    :cond_5
    iget v5, p0, Lcom/android/camera/PowerStateManager;->mPowerState:I

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/camera/PowerStateManager;->mLowPowerAlertDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_4

    .line 169
    iget-object v5, p0, Lcom/android/camera/PowerStateManager;->mLowPowerAlertDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_6

    .line 170
    iget-object v5, p0, Lcom/android/camera/PowerStateManager;->mLowPowerAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 171
    iput-object v8, p0, Lcom/android/camera/PowerStateManager;->mLowPowerAlertDialog:Landroid/app/AlertDialog;

    .line 173
    :cond_6
    iget-object v5, p0, Lcom/android/camera/PowerStateManager;->mLowPowerToast:Landroid/widget/Toast;

    if-eqz v5, :cond_4

    .line 174
    iget-object v5, p0, Lcom/android/camera/PowerStateManager;->mLowPowerToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->cancel()V

    .line 175
    iput-object v8, p0, Lcom/android/camera/PowerStateManager;->mLowPowerToast:Landroid/widget/Toast;

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/camera/PowerStateManager$PowerStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/PowerStateManager$PowerStateListener;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/PowerStateManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/camera/PowerStateManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    return-void
.end method

.method public isLowPower()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 122
    iget v1, p0, Lcom/android/camera/PowerStateManager;->mPowerState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/camera/PowerStateManager;->mPowerStateReceiver:Lcom/android/camera/PowerStateManager$PowerStateReceiver;

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PowerStateManager;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PowerStateManager;->mPowerStateReceiver:Lcom/android/camera/PowerStateManager$PowerStateReceiver;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    iput-object v2, p0, Lcom/android/camera/PowerStateManager;->mPowerStateReceiver:Lcom/android/camera/PowerStateManager$PowerStateReceiver;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PowerStateManager;->mPowerState:I

    .line 110
    iget-object v0, p0, Lcom/android/camera/PowerStateManager;->mLowPowerAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/android/camera/PowerStateManager;->mLowPowerAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 112
    iput-object v2, p0, Lcom/android/camera/PowerStateManager;->mLowPowerAlertDialog:Landroid/app/AlertDialog;

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PowerStateManager;->mLowPowerToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/camera/PowerStateManager;->mLowPowerToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 116
    iput-object v2, p0, Lcom/android/camera/PowerStateManager;->mLowPowerToast:Landroid/widget/Toast;

    goto :goto_0
.end method

.method public removeAllListener()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/PowerStateManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    return-void
.end method

.method public removeListener(Lcom/android/camera/PowerStateManager$PowerStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/PowerStateManager$PowerStateListener;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/PowerStateManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/camera/PowerStateManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 98
    new-instance v1, Lcom/android/camera/PowerStateManager$PowerStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/PowerStateManager$PowerStateReceiver;-><init>(Lcom/android/camera/PowerStateManager;Lcom/android/camera/PowerStateManager$1;)V

    iput-object v1, p0, Lcom/android/camera/PowerStateManager;->mPowerStateReceiver:Lcom/android/camera/PowerStateManager$PowerStateReceiver;

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/camera/PowerStateManager;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PowerStateManager;->mPowerStateReceiver:Lcom/android/camera/PowerStateManager$PowerStateReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    return-void
.end method
