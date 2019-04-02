.class public final Lcom/android/camera/settings/SettingObserver;
.super Ljava/lang/Object;
.source "SettingObserver.java"

# interfaces
.implements Lcom/android/camera/async/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/settings/SettingObserver$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/Observable",
        "<TT;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mScope:Ljava/lang/String;

.field private final mSettingsManager:Lcom/android/camera/settings/SettingsManager;

.field private final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "scope"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/settings/SettingsManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/android/camera/settings/SettingObserver;, "Lcom/android/camera/settings/SettingObserver<TT;>;"
    .local p4, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/camera/settings/SettingObserver;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 61
    iput-object p2, p0, Lcom/android/camera/settings/SettingObserver;->mScope:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/android/camera/settings/SettingObserver;->mKey:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/android/camera/settings/SettingObserver;->mTClass:Ljava/lang/Class;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/settings/SettingObserver;)Lcom/android/camera/settings/SettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/settings/SettingObserver;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/settings/SettingObserver;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    return-object v0
.end method

.method public static ofBoolean(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;
    .locals 2
    .param p0, "manager"    # Lcom/android/camera/settings/SettingsManager;
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/settings/SettingsManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/camera/settings/SettingObserver",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/android/camera/settings/SettingObserver;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/camera/settings/SettingObserver;-><init>(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static ofInteger(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;
    .locals 2
    .param p0, "manager"    # Lcom/android/camera/settings/SettingsManager;
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/settings/SettingsManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/camera/settings/SettingObserver",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/android/camera/settings/SettingObserver;

    const-class v1, Ljava/lang/Integer;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/camera/settings/SettingObserver;-><init>(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static ofString(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;
    .locals 2
    .param p0, "manager"    # Lcom/android/camera/settings/SettingsManager;
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/settings/SettingsManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/camera/settings/SettingObserver",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/android/camera/settings/SettingObserver;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/camera/settings/SettingObserver;-><init>(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/android/camera/settings/SettingObserver;, "Lcom/android/camera/settings/SettingObserver<TT;>;"
    new-instance v0, Lcom/android/camera/settings/SettingObserver$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/camera/settings/SettingObserver$Listener;-><init>(Lcom/android/camera/settings/SettingObserver;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Lcom/android/camera/settings/SettingObserver$1;)V

    .line 89
    .local v0, "listener":Lcom/android/camera/settings/SettingObserver$Listener;, "Lcom/android/camera/settings/SettingObserver<TT;>.Listener;"
    iget-object v1, p0, Lcom/android/camera/settings/SettingObserver;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 90
    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/android/camera/settings/SettingObserver;, "Lcom/android/camera/settings/SettingObserver<TT;>;"
    iget-object v1, p0, Lcom/android/camera/settings/SettingObserver;->mTClass:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/android/camera/settings/SettingObserver;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v2, p0, Lcom/android/camera/settings/SettingObserver;->mScope:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/settings/SettingObserver;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 107
    :cond_0
    :goto_0
    return-object v0

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/android/camera/settings/SettingObserver;->mTClass:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/android/camera/settings/SettingObserver;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v2, p0, Lcom/android/camera/settings/SettingObserver;->mScope:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/settings/SettingObserver;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "string":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    .end local v0    # "string":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/settings/SettingObserver;->mTClass:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    iget-object v1, p0, Lcom/android/camera/settings/SettingObserver;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v2, p0, Lcom/android/camera/settings/SettingObserver;->mScope:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/settings/SettingObserver;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "T must be one of {Integer, Boolean, String}"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
