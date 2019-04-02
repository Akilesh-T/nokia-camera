.class public Lcom/android/camera/StorageStateManager;
.super Ljava/lang/Object;
.source "StorageStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/StorageStateManager$StorageStateChangeListener;,
        Lcom/android/camera/StorageStateManager$StorageReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final TIP_SHOWED_TIME:I = 0xbb8


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private final mHandler:Landroid/os/Handler;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/StorageStateManager$StorageStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsManager:Lcom/android/camera/settings/SettingsManager;

.field private mStorageChangeDialog:Landroid/app/AlertDialog;

.field private mStorageReceiver:Lcom/android/camera/StorageStateManager$StorageReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-class v1, Lcom/android/camera/StorageStateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/StorageStateManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Landroid/os/Handler;Lcom/android/camera/settings/SettingsManager;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/StorageStateManager;->mListeners:Ljava/util/List;

    .line 115
    iput-object p1, p0, Lcom/android/camera/StorageStateManager;->mActivity:Lcom/android/camera/CameraActivity;

    .line 116
    iput-object p2, p0, Lcom/android/camera/StorageStateManager;->mHandler:Landroid/os/Handler;

    .line 117
    iput-object p3, p0, Lcom/android/camera/StorageStateManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/StorageStateManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/StorageStateManager;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/camera/StorageStateManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/StorageStateManager;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/StorageStateManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/StorageStateManager;->mStorageChangeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/StorageStateManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/StorageStateManager;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/camera/StorageStateManager;->mStorageChangeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/StorageStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/StorageStateManager;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/camera/StorageStateManager;->requireUpdateStorageSpaceAndHint()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/StorageStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/StorageStateManager;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/camera/StorageStateManager;->requireUpdateThumbnail()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/settings/SettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/StorageStateManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/StorageStateManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/StorageStateManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/StorageStateManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/StorageStateManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private requireUpdateStorageSpaceAndHint()V
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/camera/StorageStateManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/StorageStateManager$StorageStateChangeListener;

    .line 100
    .local v0, "listener":Lcom/android/camera/StorageStateManager$StorageStateChangeListener;
    invoke-interface {v0}, Lcom/android/camera/StorageStateManager$StorageStateChangeListener;->requireUpdateStorageSpaceAndHint()V

    goto :goto_0

    .line 102
    .end local v0    # "listener":Lcom/android/camera/StorageStateManager$StorageStateChangeListener;
    :cond_0
    return-void
.end method

.method private requireUpdateThumbnail()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/camera/StorageStateManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/StorageStateManager$StorageStateChangeListener;

    .line 106
    .local v0, "listener":Lcom/android/camera/StorageStateManager$StorageStateChangeListener;
    invoke-interface {v0}, Lcom/android/camera/StorageStateManager$StorageStateChangeListener;->requireUpdateThumbnail()V

    goto :goto_0

    .line 108
    .end local v0    # "listener":Lcom/android/camera/StorageStateManager$StorageStateChangeListener;
    :cond_0
    return-void
.end method

.method private showStorageDialog()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/camera/StorageStateManager;->mStorageChangeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/camera/StorageStateManager;->mStorageChangeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/camera/StorageStateManager;->mStorageChangeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 175
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/StorageStateManager;->mStorageChangeDialog:Landroid/app/AlertDialog;

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/camera/StorageStateManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/StorageStateManager$1;

    invoke-direct {v1, p0}, Lcom/android/camera/StorageStateManager$1;-><init>(Lcom/android/camera/StorageStateManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/camera/StorageStateManager$StorageStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/StorageStateManager$StorageStateChangeListener;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/StorageStateManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/camera/StorageStateManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/android/camera/StorageStateManager;->mStorageReceiver:Lcom/android/camera/StorageStateManager$StorageReceiver;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/camera/StorageStateManager;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/StorageStateManager;->mStorageReceiver:Lcom/android/camera/StorageStateManager$StorageReceiver;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    iput-object v2, p0, Lcom/android/camera/StorageStateManager;->mStorageReceiver:Lcom/android/camera/StorageStateManager$StorageReceiver;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/camera/StorageStateManager;->mStorageChangeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/camera/StorageStateManager;->mStorageChangeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 165
    iput-object v2, p0, Lcom/android/camera/StorageStateManager;->mStorageChangeDialog:Landroid/app/AlertDialog;

    .line 168
    :cond_1
    return-void
.end method

.method public removeAllListener()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/StorageStateManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 122
    new-instance v1, Lcom/android/camera/StorageStateManager$StorageReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/StorageStateManager$StorageReceiver;-><init>(Lcom/android/camera/StorageStateManager;Lcom/android/camera/StorageStateManager$1;)V

    iput-object v1, p0, Lcom/android/camera/StorageStateManager;->mStorageReceiver:Lcom/android/camera/StorageStateManager$StorageReceiver;

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/android/camera/StorageStateManager;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/StorageStateManager;->mStorageReceiver:Lcom/android/camera/StorageStateManager$StorageReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/StorageStateManager;->updateStoragePathIfNecessary(ZZ)V

    .line 155
    return-void
.end method

.method public updateStoragePathIfNecessary(ZZ)V
    .locals 3
    .param p1, "showToast"    # Z
    .param p2, "reloadThumbnailIfNeed"    # Z

    .prologue
    .line 214
    new-instance v0, Lcom/android/camera/StorageStateManager$2;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/StorageStateManager$2;-><init>(Lcom/android/camera/StorageStateManager;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 259
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/StorageStateManager$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 260
    return-void
.end method
