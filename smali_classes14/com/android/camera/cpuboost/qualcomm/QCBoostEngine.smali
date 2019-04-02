.class public Lcom/android/camera/cpuboost/qualcomm/QCBoostEngine;
.super Lcom/android/camera/cpuboost/BoostEngine;
.source "QCBoostEngine.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "QCBoostEngine"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/cpuboost/qualcomm/QCBoostEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/camera/cpuboost/BoostEngine;-><init>()V

    return-void
.end method


# virtual methods
.method public boostInTime(I)Z
    .locals 11
    .param p1, "timePeriod"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 18
    :try_start_0
    sget-object v7, Lcom/android/camera/cpuboost/qualcomm/QCBoostEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "boostInTime : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 19
    const-string v7, "android.util.BoostFramework"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 20
    .local v2, "boostClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "perfLockAcquire"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, [I

    aput-object v10, v8, v9

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 21
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 23
    .local v1, "boost":Ljava/lang/Object;
    const/16 v7, 0x9

    new-array v0, v7, [I

    fill-array-data v0, :array_0

    .line 24
    .local v0, "array":[I
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .end local v0    # "array":[I
    .end local v1    # "boost":Ljava/lang/Object;
    .end local v2    # "boostClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v5

    .line 26
    :catch_0
    move-exception v3

    .line 27
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v5, Lcom/android/camera/cpuboost/qualcomm/QCBoostEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "boost error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move v5, v6

    .line 29
    goto :goto_0

    .line 23
    :array_0
    .array-data 4
        0x7ff
        0x2fe
        0x3fe
        0x4fe
        0x5fe
        0x1ffe
        0x20fe
        0x21fe
        0x22fe
    .end array-data
.end method
