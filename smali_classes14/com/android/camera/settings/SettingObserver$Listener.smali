.class Lcom/android/camera/settings/SettingObserver$Listener;
.super Ljava/lang/Object;
.source "SettingObserver.java"

# interfaces
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/settings/SettingObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/camera/settings/SettingObserver;


# direct methods
.method private constructor <init>(Lcom/android/camera/settings/SettingObserver;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 38
    .local p0, "this":Lcom/android/camera/settings/SettingObserver$Listener;, "Lcom/android/camera/settings/SettingObserver<TT;>.Listener;"
    iput-object p1, p0, Lcom/android/camera/settings/SettingObserver$Listener;->this$0:Lcom/android/camera/settings/SettingObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/android/camera/settings/SettingObserver$Listener;->mRunnable:Ljava/lang/Runnable;

    .line 40
    iput-object p3, p0, Lcom/android/camera/settings/SettingObserver$Listener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/settings/SettingObserver;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Lcom/android/camera/settings/SettingObserver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/settings/SettingObserver;
    .param p2, "x1"    # Ljava/lang/Runnable;
    .param p3, "x2"    # Ljava/util/concurrent/Executor;
    .param p4, "x3"    # Lcom/android/camera/settings/SettingObserver$1;

    .prologue
    .line 34
    .local p0, "this":Lcom/android/camera/settings/SettingObserver$Listener;, "Lcom/android/camera/settings/SettingObserver<TT;>.Listener;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/settings/SettingObserver$Listener;-><init>(Lcom/android/camera/settings/SettingObserver;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lcom/android/camera/settings/SettingObserver$Listener;, "Lcom/android/camera/settings/SettingObserver<TT;>.Listener;"
    iget-object v0, p0, Lcom/android/camera/settings/SettingObserver$Listener;->this$0:Lcom/android/camera/settings/SettingObserver;

    invoke-static {v0}, Lcom/android/camera/settings/SettingObserver;->access$000(Lcom/android/camera/settings/SettingObserver;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 51
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 45
    .local p0, "this":Lcom/android/camera/settings/SettingObserver$Listener;, "Lcom/android/camera/settings/SettingObserver<TT;>.Listener;"
    iget-object v0, p0, Lcom/android/camera/settings/SettingObserver$Listener;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/camera/settings/SettingObserver$Listener;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method
