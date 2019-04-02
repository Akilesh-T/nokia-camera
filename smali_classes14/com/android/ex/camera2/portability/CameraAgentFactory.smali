.class public Lcom/android/ex/camera2/portability/CameraAgentFactory;
.super Ljava/lang/Object;
.source "CameraAgentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;
    }
.end annotation


# static fields
.field private static final API_LEVEL_OVERRIDE_API1:Ljava/lang/String; = "1"

.field private static final API_LEVEL_OVERRIDE_API2:Ljava/lang/String; = "2"

.field private static final API_LEVEL_OVERRIDE_DEFAULT:Ljava/lang/String; = "0"

.field private static final API_LEVEL_OVERRIDE_KEY:Ljava/lang/String; = "camera2.portability.force_api"

.field private static final API_LEVEL_OVERRIDE_VALUE:Ljava/lang/String;

.field private static final FIRST_SDK_WITH_API_2:I = 0x15

.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

.field private static sAndroidCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

.field private static sAndroidCamera2AgentClientCount:I

.field private static sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

.field private static sAndroidCameraAgentClientCount:I

.field private static sAndroidSubCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

.field private static sAndroidSubCamera2AgentClientCount:I

.field private static sAndroidSubCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

.field private static sAndroidSubCameraAgentClientCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamAgntFact"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    .line 46
    const-string v0, "camera2.portability.force_api"

    const-string v1, "0"

    .line 47
    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->API_LEVEL_OVERRIDE_VALUE:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAndroidCameraAgent(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "api"    # Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .prologue
    .line 153
    const-class v1, Lcom/android/ex/camera2/portability/CameraAgentFactory;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->validateApiChoice(Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object p1

    .line 155
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    if-ne p1, v0, :cond_1

    .line 156
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-nez v0, :cond_0

    .line 157
    invoke-static {p0, p1}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->initAndroidCameraAgent(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgent;

    .line 159
    :cond_0
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :goto_0
    monitor-exit v1

    return-object v0

    .line 161
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->highestSupportedApi()Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    if-ne v0, v2, :cond_2

    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Camera API_2 unavailable on this device"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 165
    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-nez v0, :cond_3

    .line 166
    invoke-static {p0, p1}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->initAndroidCameraAgent(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgent;

    .line 168
    :cond_3
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static highestSupportedApi()Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;
    .locals 2

    .prologue
    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_2:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .line 78
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    goto :goto_0
.end method

.method public static declared-synchronized initAndroidCameraAgent(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "api"    # Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .prologue
    .line 119
    const-class v1, Lcom/android/ex/camera2/portability/CameraAgentFactory;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->validateApiChoice(Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object p1

    .line 121
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    if-ne p1, v0, :cond_1

    .line 122
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;-><init>()V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 125
    :cond_0
    sget v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgentClientCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgentClientCount:I

    .line 126
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_0
    monitor-exit v1

    return-object v0

    .line 128
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->highestSupportedApi()Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    if-ne v0, v2, :cond_2

    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Camera API_2 unavailable on this device"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 132
    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-nez v0, :cond_3

    .line 133
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-direct {v0, p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 135
    :cond_3
    sget v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2AgentClientCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2AgentClientCount:I

    .line 136
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized initAndroidSubCameraAgent(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "api"    # Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .prologue
    .line 229
    const-class v1, Lcom/android/ex/camera2/portability/CameraAgentFactory;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->validateApiChoice(Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object p1

    .line 231
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    if-ne p1, v0, :cond_1

    .line 232
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;-><init>()V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 235
    :cond_0
    sget v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCameraAgentClientCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCameraAgentClientCount:I

    .line 236
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :goto_0
    monitor-exit v1

    return-object v0

    .line 238
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->highestSupportedApi()Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    if-ne v0, v2, :cond_2

    .line 239
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Camera API_2 unavailable on this device"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 242
    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-nez v0, :cond_3

    .line 243
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-direct {v0, p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 245
    :cond_3
    sget v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCamera2AgentClientCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCamera2AgentClientCount:I

    .line 246
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized recycle(Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)V
    .locals 3
    .param p0, "api"    # Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .prologue
    .line 182
    const-class v1, Lcom/android/ex/camera2/portability/CameraAgentFactory;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->validateApiChoice(Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object p0

    .line 184
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    if-ne p0, v0, :cond_4

    .line 185
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->recycle()V

    .line 187
    const/4 v0, 0x0

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 188
    const/4 v0, 0x0

    sput v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgentClientCount:I

    .line 194
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->recycle()V

    .line 196
    const/4 v0, 0x0

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 197
    const/4 v0, 0x0

    sput v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCameraAgentClientCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    .line 189
    :cond_2
    :try_start_1
    sget v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgentClientCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgentClientCount:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->recycle()V

    .line 191
    const/4 v0, 0x0

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 198
    :cond_3
    :try_start_2
    sget v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCameraAgentClientCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCameraAgentClientCount:I

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz v0, :cond_1

    .line 199
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->recycle()V

    .line 200
    const/4 v0, 0x0

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    goto :goto_1

    .line 204
    :cond_4
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->highestSupportedApi()Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    if-ne v0, v2, :cond_5

    .line 205
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Camera API_2 unavailable on this device"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_5
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 209
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->recycle()V

    .line 210
    const/4 v0, 0x0

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 211
    const/4 v0, 0x0

    sput v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2AgentClientCount:I

    .line 217
    :cond_6
    :goto_2
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 218
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->recycle()V

    .line 219
    const/4 v0, 0x0

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 220
    const/4 v0, 0x0

    sput v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCamera2AgentClientCount:I

    goto :goto_1

    .line 212
    :cond_7
    sget v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2AgentClientCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2AgentClientCount:I

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz v0, :cond_6

    .line 213
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->recycle()V

    .line 214
    const/4 v0, 0x0

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

    goto :goto_2

    .line 221
    :cond_8
    sget v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCamera2AgentClientCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCamera2AgentClientCount:I

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz v0, :cond_1

    .line 222
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->recycle()V

    .line 223
    const/4 v0, 0x0

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidSubCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private static validateApiChoice(Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;
    .locals 2
    .param p0, "choice"    # Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .prologue
    .line 83
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->API_LEVEL_OVERRIDE_VALUE:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "API level overridden by system property: forced to 1"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    sget-object p0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .line 99
    :cond_0
    :goto_0
    return-object p0

    .line 86
    :cond_1
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->API_LEVEL_OVERRIDE_VALUE:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "API level overridden by system property: forced to 2"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    sget-object p0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_2:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    goto :goto_0

    .line 91
    :cond_2
    if-nez p0, :cond_3

    .line 92
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "null API level request, so assuming AUTO"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    sget-object p0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->AUTO:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .line 95
    :cond_3
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->AUTO:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    if-ne p0, v0, :cond_0

    .line 96
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->highestSupportedApi()Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object p0

    goto :goto_0
.end method
