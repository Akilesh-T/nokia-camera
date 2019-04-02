.class public Lcom/android/camera/app/MemoryQuery;
.super Ljava/lang/Object;
.source "MemoryQuery.java"


# static fields
.field public static final KEY_DALVIK_PSS:Ljava/lang/String; = "dalvikPSS"

.field public static final KEY_LARGE_MEMORY_CLASS:Ljava/lang/String; = "largeMemoryClass"

.field public static final KEY_LAST_TRIM_LEVEL:Ljava/lang/String; = "lastTrimLevel"

.field public static final KEY_LOW_MEMORY:Ljava/lang/String; = "lowMemory"

.field public static final KEY_MEMORY_AVAILABLE:Ljava/lang/String; = "availMem"

.field public static final KEY_MEMORY_CLASS:Ljava/lang/String; = "memoryClass"

.field public static final KEY_NATIVE_PSS:Ljava/lang/String; = "nativePSS"

.field public static final KEY_OTHER_PSS:Ljava/lang/String; = "otherPSS"

.field public static final KEY_THRESHOLD:Ljava/lang/String; = "threshold"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final KEY_TOTAL_MEMORY:Ljava/lang/String; = "totalMem"

.field public static final KEY_TOTAL_PRIVATE_DIRTY:Ljava/lang/String; = "totalPrivateDirty"

.field public static final KEY_TOTAL_PSS:Ljava/lang/String; = "totalPSS"

.field public static final KEY_TOTAL_SHARED_DIRTY:Ljava/lang/String; = "totalSharedDirty"

.field public static final REPORT_LABEL_LAUNCH:Ljava/lang/String; = "launch"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final BYTES_IN_KILOBYTE:J

.field private final BYTES_IN_MEGABYTE:J

.field private mActivityManager:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "MemoryQuery"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/app/MemoryQuery;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManager;)V
    .locals 2
    .param p1, "activityManager"    # Landroid/app/ActivityManager;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lcom/android/camera/app/MemoryQuery;->BYTES_IN_KILOBYTE:J

    .line 34
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/android/camera/app/MemoryQuery;->BYTES_IN_MEGABYTE:J

    .line 56
    iput-object p1, p0, Lcom/android/camera/app/MemoryQuery;->mActivityManager:Landroid/app/ActivityManager;

    .line 57
    return-void
.end method


# virtual methods
.method public queryMemory()Ljava/util/HashMap;
    .locals 38

    .prologue
    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/MemoryQuery;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v12

    .line 68
    .local v12, "memoryClass":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/MemoryQuery;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v10

    .line 69
    .local v10, "largeMemoryClass":I
    new-instance v13, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v13}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 70
    .local v13, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/MemoryQuery;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 71
    iget-wide v0, v13, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    move-wide/from16 v34, v0

    const-wide/32 v36, 0x100000

    div-long v6, v34, v36

    .line 72
    .local v6, "availMem":J
    iget-wide v0, v13, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    move-wide/from16 v34, v0

    const-wide/32 v36, 0x100000

    div-long v26, v34, v36

    .line 73
    .local v26, "totalMem":J
    iget-wide v0, v13, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    move-wide/from16 v34, v0

    const-wide/32 v36, 0x100000

    div-long v22, v34, v36

    .line 74
    .local v22, "threshold":J
    iget-boolean v11, v13, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 77
    .local v11, "lowMemory":Z
    new-instance v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v5}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 78
    .local v5, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-static {v5}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 81
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 84
    .local v4, "appPID":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    .line 85
    .local v24, "timestamp":J
    const-wide/16 v30, 0x0

    .line 86
    .local v30, "totalPrivateDirty":J
    const-wide/16 v32, 0x0

    .line 87
    .local v32, "totalSharedDirty":J
    const-wide/16 v28, 0x0

    .line 88
    .local v28, "totalPSS":J
    const-wide/16 v16, 0x0

    .line 89
    .local v16, "nativePSS":J
    const-wide/16 v8, 0x0

    .line 90
    .local v8, "dalvikPSS":J
    const-wide/16 v18, 0x0

    .line 92
    .local v18, "otherPSS":J
    if-eqz v4, :cond_0

    .line 93
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 94
    .local v20, "pids":[I
    const/16 v21, 0x0

    aput v4, v20, v21

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/MemoryQuery;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v14

    .line 96
    .local v14, "memoryInfoArray":[Landroid/os/Debug$MemoryInfo;
    const/16 v21, 0x0

    aget-object v21, v14, v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x400

    div-long v30, v34, v36

    .line 97
    const/16 v21, 0x0

    aget-object v21, v14, v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x400

    div-long v32, v34, v36

    .line 98
    const/16 v21, 0x0

    aget-object v21, v14, v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x400

    div-long v28, v34, v36

    .line 99
    const/16 v21, 0x0

    aget-object v21, v14, v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x400

    div-long v16, v34, v36

    .line 100
    const/16 v21, 0x0

    aget-object v21, v14, v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x400

    div-long v8, v34, v36

    .line 101
    const/16 v21, 0x0

    aget-object v21, v14, v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x400

    div-long v18, v34, v36

    .line 104
    .end local v14    # "memoryInfoArray":[Landroid/os/Debug$MemoryInfo;
    .end local v20    # "pids":[I
    :cond_0
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v15, "outputData":Ljava/util/HashMap;
    const-string v21, "timestamp"

    new-instance v34, Ljava/lang/Long;

    move-object/from16 v0, v34

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v21, "availMem"

    new-instance v34, Ljava/lang/Long;

    move-object/from16 v0, v34

    invoke-direct {v0, v6, v7}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v21, "totalMem"

    new-instance v34, Ljava/lang/Long;

    move-object/from16 v0, v34

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v21, "totalPSS"

    new-instance v34, Ljava/lang/Long;

    move-object/from16 v0, v34

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v21, "lastTrimLevel"

    new-instance v34, Ljava/lang/Integer;

    iget v0, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    move/from16 v35, v0

    invoke-direct/range {v34 .. v35}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v21, "totalPrivateDirty"

    new-instance v34, Ljava/lang/Long;

    move-object/from16 v0, v34

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v21, "totalSharedDirty"

    new-instance v34, Ljava/lang/Long;

    move-object/from16 v0, v34

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v21, "memoryClass"

    new-instance v34, Ljava/lang/Long;

    int-to-long v0, v12

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v21, "largeMemoryClass"

    new-instance v34, Ljava/lang/Long;

    int-to-long v0, v10

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v21, "nativePSS"

    new-instance v34, Ljava/lang/Long;

    move-object/from16 v0, v34

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v21, "dalvikPSS"

    new-instance v34, Ljava/lang/Long;

    move-object/from16 v0, v34

    invoke-direct {v0, v8, v9}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v21, "otherPSS"

    new-instance v34, Ljava/lang/Long;

    move-object/from16 v0, v34

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v21, "threshold"

    new-instance v34, Ljava/lang/Long;

    move-object/from16 v0, v34

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v21, "lowMemory"

    new-instance v34, Ljava/lang/Boolean;

    move-object/from16 v0, v34

    invoke-direct {v0, v11}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v21, Lcom/android/camera/app/MemoryQuery;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v34, "timestamp=%d, availMem=%d, totalMem=%d, totalPSS=%d, lastTrimLevel=%d, largeMemoryClass=%d, nativePSS=%d, dalvikPSS=%d, otherPSS=%d,threshold=%d, lowMemory=%s"

    const/16 v35, 0xb

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    .line 122
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x2

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x3

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x4

    iget v0, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    move/from16 v37, v0

    .line 123
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x6

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x8

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x9

    .line 124
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0xa

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    aput-object v37, v35, v36

    .line 120
    invoke-static/range {v34 .. v35}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    return-object v15
.end method
