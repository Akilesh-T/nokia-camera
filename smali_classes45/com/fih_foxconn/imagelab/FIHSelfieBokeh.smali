.class public Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;
.super Ljava/lang/Object;
.source "FIHSelfieBokeh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;,
        Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBError;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static sbInstance:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;


# instance fields
.field final MATTING_HEIGHT:I

.field final MATTING_WIDTH:I

.field final TARGET_HEIGHT:I

.field final TARGET_WIDTH:I

.field private isSupportZeissBokeh:Z

.field private mBokehType:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

.field mModelType:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

.field mPSAdaBokeh:Lcom/fih_foxconn/imagelab/PSAdaBokeh;

.field mPSModel:Lcom/fih_foxconn/imagelab/AbstractPSModel;

.field mPlatform:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

.field mRuntime:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

.field final modelSync:Ljava/lang/Object;

.field final nativeFDSync:Ljava/lang/Object;

.field private nativeFdPtr:J

.field private nativeObjPtr:J

.field final nativeObjSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    .line 18
    invoke-static {}, Lcom/fih_foxconn/imagelab/PSInit;->init()V

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->sbInstance:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPSModel:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    .line 24
    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPSAdaBokeh:Lcom/fih_foxconn/imagelab/PSAdaBokeh;

    .line 30
    const/16 v0, 0x258

    iput v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->MATTING_WIDTH:I

    .line 31
    const/16 v0, 0x320

    iput v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->MATTING_HEIGHT:I

    .line 33
    const/16 v0, 0x780

    iput v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TARGET_WIDTH:I

    .line 34
    const/16 v0, 0xa00

    iput v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TARGET_HEIGHT:I

    .line 36
    sget-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->ADABOKEH:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mBokehType:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->modelSync:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeObjSync:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeFDSync:Ljava/lang/Object;

    .line 42
    iput-wide v2, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeObjPtr:J

    .line 43
    iput-wide v2, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeFdPtr:J

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->isSupportZeissBokeh:Z

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mContext:Landroid/content/Context;

    .line 116
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->QCT:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPlatform:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    .line 117
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->CPU:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mRuntime:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    .line 118
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;->NORMAL:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mModelType:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    .line 119
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->initialize()V

    .line 120
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/fih_foxconn/imagelab/AbstractPSModel;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "psModel"    # Lcom/fih_foxconn/imagelab/AbstractPSModel;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPSModel:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    .line 24
    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPSAdaBokeh:Lcom/fih_foxconn/imagelab/PSAdaBokeh;

    .line 30
    const/16 v0, 0x258

    iput v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->MATTING_WIDTH:I

    .line 31
    const/16 v0, 0x320

    iput v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->MATTING_HEIGHT:I

    .line 33
    const/16 v0, 0x780

    iput v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TARGET_WIDTH:I

    .line 34
    const/16 v0, 0xa00

    iput v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TARGET_HEIGHT:I

    .line 36
    sget-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->ADABOKEH:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mBokehType:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->modelSync:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeObjSync:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeFDSync:Ljava/lang/Object;

    .line 42
    iput-wide v2, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeObjPtr:J

    .line 43
    iput-wide v2, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeFdPtr:J

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->isSupportZeissBokeh:Z

    .line 123
    sput-object p1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mContext:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPSModel:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    .line 125
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->initialize()V

    .line 126
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "platform"    # Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;
    .param p3, "runtime"    # Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;
    .param p4, "modelType"    # Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPSModel:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    .line 24
    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPSAdaBokeh:Lcom/fih_foxconn/imagelab/PSAdaBokeh;

    .line 30
    const/16 v0, 0x258

    iput v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->MATTING_WIDTH:I

    .line 31
    const/16 v0, 0x320

    iput v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->MATTING_HEIGHT:I

    .line 33
    const/16 v0, 0x780

    iput v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TARGET_WIDTH:I

    .line 34
    const/16 v0, 0xa00

    iput v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TARGET_HEIGHT:I

    .line 36
    sget-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->ADABOKEH:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mBokehType:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->modelSync:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeObjSync:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeFDSync:Ljava/lang/Object;

    .line 42
    iput-wide v2, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeObjPtr:J

    .line 43
    iput-wide v2, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeFdPtr:J

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->isSupportZeissBokeh:Z

    .line 132
    sput-object p1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mContext:Landroid/content/Context;

    .line 133
    iput-object p2, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPlatform:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    .line 134
    iput-object p3, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mRuntime:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    .line 135
    iput-object p4, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mModelType:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    .line 136
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->initialize()V

    .line 137
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;)V
    .locals 0
    .param p0, "x0"    # Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeSetupObj()V

    return-void
.end method

.method static synthetic access$300(Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;)V
    .locals 0
    .param p0, "x0"    # Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeSetupFD()V

    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const-class v1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->sbInstance:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->sbInstance:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    invoke-virtual {v0}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->release()V

    .line 75
    :cond_0
    new-instance v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    invoke-direct {v0, p0}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->sbInstance:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    .line 76
    sget-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->sbInstance:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;Lcom/fih_foxconn/imagelab/AbstractPSModel;)Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "psModel"    # Lcom/fih_foxconn/imagelab/AbstractPSModel;

    .prologue
    .line 80
    const-class v1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->sbInstance:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->sbInstance:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    invoke-virtual {v0}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->release()V

    .line 84
    :cond_0
    new-instance v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    invoke-direct {v0, p0, p1}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;-><init>(Landroid/content/Context;Lcom/fih_foxconn/imagelab/AbstractPSModel;)V

    sput-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->sbInstance:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    .line 85
    sget-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->sbInstance:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;)Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "platform"    # Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;
    .param p2, "runtime"    # Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    .prologue
    .line 90
    const-class v1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->sbInstance:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->sbInstance:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    invoke-virtual {v0}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->release()V

    .line 94
    :cond_0
    new-instance v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    sget-object v2, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;->NORMAL:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;-><init>(Landroid/content/Context;Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;)V

    sput-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->sbInstance:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    .line 95
    sget-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->sbInstance:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;)Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "platform"    # Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;
    .param p2, "runtime"    # Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;
    .param p3, "modelType"    # Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    .prologue
    .line 99
    const-class v1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->sbInstance:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->sbInstance:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    invoke-virtual {v0}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->release()V

    .line 103
    :cond_0
    new-instance v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;-><init>(Landroid/content/Context;Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;)V

    sput-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->sbInstance:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    .line 104
    sget-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->sbInstance:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getDofBokehType()Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;
    .locals 4

    .prologue
    .line 229
    sget-object v1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bokeh type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mBokehType:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget-object v1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$4;->$SwitchMap$com$fih_foxconn$imagelab$FIHSelfieBokeh$SBType:[I

    iget-object v2, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mBokehType:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    invoke-virtual {v2}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 248
    sget-object v1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported z-bokeh type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mBokehType:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sget-object v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->BIOTAR:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    .line 252
    .local v0, "type":Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;
    :goto_0
    sget-object v1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dof bokeh type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-object v0

    .line 233
    .end local v0    # "type":Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;
    :pswitch_0
    sget-object v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->PLANAR:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    .line 234
    .restart local v0    # "type":Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;
    goto :goto_0

    .line 236
    .end local v0    # "type":Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;
    :pswitch_1
    sget-object v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->BIOTAR:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    .line 237
    .restart local v0    # "type":Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;
    goto :goto_0

    .line 239
    .end local v0    # "type":Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;
    :pswitch_2
    sget-object v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->CIRCLE:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    .line 240
    .restart local v0    # "type":Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;
    goto :goto_0

    .line 242
    .end local v0    # "type":Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;
    :pswitch_3
    sget-object v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->STAR:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    .line 243
    .restart local v0    # "type":Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;
    goto :goto_0

    .line 245
    .end local v0    # "type":Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;
    :pswitch_4
    sget-object v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->HEART:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    .line 246
    .restart local v0    # "type":Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;
    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;
    .locals 2

    .prologue
    .line 108
    const-class v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->sbInstance:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getModelInputType(Landroid/graphics/Bitmap;IZ)Lcom/fih_foxconn/imagelab/PSModelInputType;
    .locals 5
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "jpegRotation"    # I
    .param p3, "isHwRotate"    # Z

    .prologue
    .line 455
    invoke-direct {p0, p1, p2, p3}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->rotateBitmapForFD(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 456
    .local v1, "rotateSrc":Landroid/graphics/Bitmap;
    invoke-direct {p0, v1}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->getNumOfFaces(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 458
    .local v0, "numOfFacesInSrc":I
    sget-object v2, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " faces."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 460
    sget-object v2, Lcom/fih_foxconn/imagelab/PSModelInputType;->RGB:Lcom/fih_foxconn/imagelab/PSModelInputType;

    .line 462
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/fih_foxconn/imagelab/PSModelInputType;->RGBM:Lcom/fih_foxconn/imagelab/PSModelInputType;

    goto :goto_0
.end method

.method private getNumOfFaces(Landroid/graphics/Bitmap;)I
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 495
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 496
    .local v5, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 498
    .local v2, "height":I
    move-object v0, p1

    .line 499
    .local v0, "bitmap_image":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 500
    .local v4, "imagebyteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 501
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 502
    .local v3, "imagebyteArray":[B
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 503
    const/4 v4, 0x0

    .line 506
    iget-object v7, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeFDSync:Ljava/lang/Object;

    monitor-enter v7

    .line 507
    const/16 v6, 0xa

    :try_start_0
    invoke-direct {p0, v3, v5, v2, v6}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeGetNumOfFaces([BIII)I

    move-result v1

    .line 508
    .local v1, "count":I
    monitor-exit v7

    .line 509
    return v1

    .line 508
    .end local v1    # "count":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private getPostProcessedMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 28
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "mask"    # Landroid/graphics/Bitmap;
    .param p3, "jpegRotation"    # I
    .param p4, "isHwRotate"    # Z

    .prologue
    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 423
    .local v7, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 424
    .local v11, "h":I
    mul-int v4, v7, v11

    new-array v5, v4, [I

    .line 425
    .local v5, "imageArr":[I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v4, v6

    new-array v13, v4, [I

    .line 426
    .local v13, "maskArr":[I
    mul-int v4, v7, v11

    new-array v0, v4, [I

    move-object/from16 v26, v0

    .line 428
    .local v26, "outMaskArr":[I
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    move v10, v7

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 429
    const/4 v14, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move-object/from16 v12, p2

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 431
    const/16 v20, 0xa

    const/16 v21, 0x5

    move-object/from16 v12, p0

    move-object v14, v5

    move-object/from16 v15, v26

    move/from16 v16, v7

    move/from16 v17, v11

    move/from16 v18, p3

    move/from16 v19, p4

    invoke-direct/range {v12 .. v21}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeRefineThenMattingMask([I[I[IIIIZII)V

    .line 434
    invoke-direct/range {p0 .. p0}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->isZSeriesBokeh()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 435
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_0
    move-object/from16 v0, v26

    array-length v4, v0

    move/from16 v0, v25

    if-ge v0, v4, :cond_0

    .line 436
    aget v4, v26, v25

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    rsub-int v0, v4, 0xff

    move/from16 v27, v0

    .line 437
    .local v27, "r":I
    aget v4, v26, v25

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    rsub-int v0, v4, 0xff

    move/from16 v24, v0

    .line 438
    .local v24, "g":I
    aget v4, v26, v25

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    rsub-int v0, v4, 0xff

    move/from16 v23, v0

    .line 439
    .local v23, "b":I
    const/16 v22, 0xff

    .line 440
    .local v22, "a":I
    move/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v24

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, v26, v25

    .line 435
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 443
    .end local v22    # "a":I
    .end local v23    # "b":I
    .end local v24    # "g":I
    .end local v25    # "i":I
    .end local v27    # "r":I
    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v11, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 444
    .local v14, "recoveryMask":Landroid/graphics/Bitmap;
    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v15, v26

    move/from16 v17, v7

    move/from16 v20, v7

    move/from16 v21, v11

    invoke-virtual/range {v14 .. v21}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 446
    return-object v14
.end method

.method private getTargetHeight(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 415
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    const/high16 v1, 0x4b0000

    if-gt v0, v1, :cond_0

    .line 416
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 418
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/16 v0, 0xa00

    goto :goto_0

    :cond_1
    const/16 v0, 0x780

    goto :goto_0
.end method

.method private getTargetWidth(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 408
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    const/high16 v1, 0x4b0000

    if-gt v0, v1, :cond_0

    .line 409
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 411
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/16 v0, 0x780

    goto :goto_0

    :cond_1
    const/16 v0, 0xa00

    goto :goto_0
.end method

.method private initialize()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 140
    iget-object v2, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPSModel:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    if-nez v2, :cond_0

    .line 141
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$1;

    invoke-direct {v3, p0}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$1;-><init>(Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 154
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 156
    :cond_0
    iget-wide v2, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeObjPtr:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 157
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$2;

    invoke-direct {v3, p0}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$2;-><init>(Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 166
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 168
    :cond_1
    iget-wide v2, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeFdPtr:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 169
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$3;

    invoke-direct {v3, p0}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$3;-><init>(Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 178
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 182
    :cond_2
    :try_start_0
    const-string v2, "com.fih_foxconn.depthlib.refocus.DofEngine"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 183
    invoke-static {}, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->getInstance()Lcom/fih_foxconn/depthlib/refocus/DofEngine;

    move-result-object v1

    .line 184
    .local v1, "engine":Lcom/fih_foxconn/depthlib/refocus/DofEngine;
    invoke-virtual {v1}, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->init()V

    .line 185
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->isSupportZeissBokeh:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1    # "engine":Lcom/fih_foxconn/depthlib/refocus/DofEngine;
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->isSupportZeissBokeh:Z

    .line 188
    sget-object v2, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    const-string v3, "Zeiss bokeh not support"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isZSeriesBokeh()Z
    .locals 2

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->isSupportZeissBokeh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mBokehType:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    sget-object v1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->ADABOKEH:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeGetNumOfFaces([BIII)I
.end method

.method private native nativeRefineThenMattingMask([I[I[IIIIZII)V
.end method

.method private native nativeReleaseFD()V
.end method

.method private native nativeReleaseObj()V
.end method

.method private native nativeSetupFD()V
.end method

.method private native nativeSetupObj()V
.end method

.method private processJavaApi(Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;)I
    .locals 29
    .param p1, "image"    # Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;

    .prologue
    .line 268
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 269
    .local v20, "elapsedTime":J
    move-wide/from16 v26, v20

    .line 271
    .local v26, "startTime":J
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mData:[B

    move-object/from16 v0, p1

    iget v5, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mWidth:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mHeight:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mYStride:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mHeight:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mFormat:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    invoke-static/range {v4 .. v9}, Lcom/fih_foxconn/imagelab/ColorConverter;->ConvertFromFormatToBitmap([BIIIILcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 274
    .local v24, "src":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PERF] ColorConvert: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v26

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    move-object/from16 v0, p1

    iget v5, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->exifOrientation:I

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mIsHwRotate:Z

    move-object/from16 v0, v24

    invoke-static {v0, v5, v6}, Lcom/fih_foxconn/imagelab/PSModelUtil;->createInputBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 279
    .local v12, "bitmap_image":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    .line 280
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->modelSync:Ljava/lang/Object;

    monitor-enter v6

    .line 281
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPSModel:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->exifOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mIsHwRotate:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v7, v8}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->getModelInputType(Landroid/graphics/Bitmap;IZ)Lcom/fih_foxconn/imagelab/PSModelInputType;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/fih_foxconn/imagelab/AbstractPSModel;->setModelInputType(Lcom/fih_foxconn/imagelab/PSModelInputType;)V

    .line 283
    sget-object v5, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PERF] Waiting for Inference: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v26

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " msec"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    .line 285
    sget-object v5, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inferenceAndGetMask start - mModel: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPSModel:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPSModel:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->exifOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mIsHwRotate:Z

    invoke-static {v5, v12, v7, v8}, Lcom/fih_foxconn/imagelab/PSModelUtil;->inferenceAndGetMask(Lcom/fih_foxconn/imagelab/AbstractPSModel;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 287
    .local v11, "bitmap_binary":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PERF] Inference: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v26

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " msec"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    .line 291
    move-object/from16 v0, p1

    iget v5, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->exifOrientation:I

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mIsHwRotate:Z

    invoke-static {v11, v12, v5, v6}, Lcom/fih_foxconn/imagelab/PSProc;->refineBinaryMaskUsingGC(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 292
    .local v15, "bitmap_mask":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PERF] Refinement: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v26

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    .line 300
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->getTargetWidth(Landroid/graphics/Bitmap;)I

    move-result v23

    .line 301
    .local v23, "mattingWidth":I
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->getTargetHeight(Landroid/graphics/Bitmap;)I

    move-result v22

    .line 302
    .local v22, "mattingHeight":I
    const/4 v5, 0x0

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v15, v0, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 303
    .local v17, "bitmap_mask_matting_in":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-static {v0, v1, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 306
    .local v14, "bitmap_image_matting_in":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->getTargetWidth(Landroid/graphics/Bitmap;)I

    move-result v28

    .line 307
    .local v28, "targetWidth":I
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->getTargetHeight(Landroid/graphics/Bitmap;)I

    move-result v25

    .line 308
    .local v25, "targetHeight":I
    const/4 v5, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v28

    move/from16 v2, v25

    invoke-static {v0, v1, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 309
    .local v13, "bitmap_image_bokeh_in":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PERF] ResizeToMatting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v26

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    .line 312
    const/16 v5, 0xa

    const/4 v6, 0x5

    move-object/from16 v0, v17

    invoke-static {v0, v14, v5, v6}, Lcom/fih_foxconn/imagelab/PSProc;->mattingWithBinaryMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 313
    .local v18, "bitmap_mask_matting_rst":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PERF] Matting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v26

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    .line 317
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 318
    .local v16, "bitmap_mask_bokeh_in":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PERF] ResizeBack: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v26

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    .line 322
    new-instance v5, Lcom/fih_foxconn/imagelab/PSAdaBokeh;

    sget-object v6, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/fih_foxconn/imagelab/PSAdaBokeh;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPSAdaBokeh:Lcom/fih_foxconn/imagelab/PSAdaBokeh;

    .line 323
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPSAdaBokeh:Lcom/fih_foxconn/imagelab/PSAdaBokeh;

    move-object/from16 v0, v16

    invoke-virtual {v5, v13, v0}, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->process(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 324
    .local v19, "bokehRst":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PERF] Bokeh: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v26

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 329
    .local v4, "bokehRst_final":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    .line 330
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mData:[B

    move-object/from16 v0, p1

    iget v6, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mWidth:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mHeight:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mYStride:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mHeight:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mFormat:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    invoke-static/range {v4 .. v10}, Lcom/fih_foxconn/imagelab/ColorConverter;->ConvertBitmapToFormat(Landroid/graphics/Bitmap;[BIIIILcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;)V

    .line 332
    sget-object v5, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PERF] ConvertBack: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v26

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object v5, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PERF] SelfieBokeh done: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v20

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPSAdaBokeh:Lcom/fih_foxconn/imagelab/PSAdaBokeh;

    .line 336
    const/4 v5, 0x0

    return v5

    .line 288
    .end local v4    # "bokehRst_final":Landroid/graphics/Bitmap;
    .end local v11    # "bitmap_binary":Landroid/graphics/Bitmap;
    .end local v13    # "bitmap_image_bokeh_in":Landroid/graphics/Bitmap;
    .end local v14    # "bitmap_image_matting_in":Landroid/graphics/Bitmap;
    .end local v15    # "bitmap_mask":Landroid/graphics/Bitmap;
    .end local v16    # "bitmap_mask_bokeh_in":Landroid/graphics/Bitmap;
    .end local v17    # "bitmap_mask_matting_in":Landroid/graphics/Bitmap;
    .end local v18    # "bitmap_mask_matting_rst":Landroid/graphics/Bitmap;
    .end local v19    # "bokehRst":Landroid/graphics/Bitmap;
    .end local v22    # "mattingHeight":I
    .end local v23    # "mattingWidth":I
    .end local v25    # "targetHeight":I
    .end local v28    # "targetWidth":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private processNativeApi(Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;)I
    .locals 22
    .param p1, "image"    # Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;

    .prologue
    .line 342
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 343
    .local v16, "elapsedTime":J
    move-wide/from16 v18, v16

    .line 345
    .local v18, "startTime":J
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mData:[B

    move-object/from16 v0, p1

    iget v3, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mWidth:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mHeight:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mYStride:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mHeight:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mFormat:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    invoke-static/range {v2 .. v7}, Lcom/fih_foxconn/imagelab/ColorConverter;->ConvertFromFormatToBitmap([BIIIILcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 348
    .local v15, "src":Landroid/graphics/Bitmap;
    sget-object v2, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PERF] ColorConvert: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v18

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    move-object/from16 v0, p1

    iget v2, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->exifOrientation:I

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mIsHwRotate:Z

    invoke-static {v15, v2, v6}, Lcom/fih_foxconn/imagelab/PSModelUtil;->createInputBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 352
    .local v13, "bitmap_image":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->getTargetWidth(Landroid/graphics/Bitmap;)I

    move-result v21

    .line 353
    .local v21, "targetWidth":I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->getTargetHeight(Landroid/graphics/Bitmap;)I

    move-result v20

    .line 354
    .local v20, "targetHeight":I
    const/4 v2, 0x1

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v15, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 356
    .local v3, "bitmap_image_bokeh_in":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 357
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->modelSync:Ljava/lang/Object;

    monitor-enter v6

    .line 358
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPSModel:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->exifOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mIsHwRotate:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7, v8}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->getModelInputType(Landroid/graphics/Bitmap;IZ)Lcom/fih_foxconn/imagelab/PSModelInputType;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/fih_foxconn/imagelab/AbstractPSModel;->setModelInputType(Lcom/fih_foxconn/imagelab/PSModelInputType;)V

    .line 360
    sget-object v2, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PERF] Waiting for Inference: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v18

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " msec"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 362
    sget-object v2, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inferenceAndGetMask start - mModel: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPSModel:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPSModel:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->exifOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mIsHwRotate:Z

    invoke-static {v2, v13, v7, v8}, Lcom/fih_foxconn/imagelab/PSModelUtil;->inferenceAndGetMask(Lcom/fih_foxconn/imagelab/AbstractPSModel;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 364
    .local v12, "bitmap_binary":Landroid/graphics/Bitmap;
    sget-object v2, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PERF] Inference: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v18

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " msec"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 371
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeObjSync:Ljava/lang/Object;

    monitor-enter v6

    .line 372
    :try_start_1
    move-object/from16 v0, p1

    iget v2, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->exifOrientation:I

    move-object/from16 v0, p1

    iget-boolean v7, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mIsHwRotate:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12, v2, v7}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->getPostProcessedMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 373
    .local v4, "bitmap_mask_bokeh_in":Landroid/graphics/Bitmap;
    sget-object v2, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PERF] getPostProcessedMask: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v18

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " msec"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 378
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 380
    invoke-direct/range {p0 .. p0}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->isZSeriesBokeh()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    invoke-static {}, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->getInstance()Lcom/fih_foxconn/depthlib/refocus/DofEngine;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget v6, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->exifOrientation:I

    rsub-int v6, v6, 0x168

    rem-int/lit16 v6, v6, 0x168

    .line 386
    invoke-direct/range {p0 .. p0}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->getDofBokehType()Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    move-result-object v7

    sget-object v8, Lcom/fih_foxconn/depthlib/refocus/DofEngine$DEPTH_TYPE;->PSMASK:Lcom/fih_foxconn/depthlib/refocus/DofEngine$DEPTH_TYPE;

    .line 381
    invoke-virtual/range {v2 .. v8}, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->process(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FILcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;Lcom/fih_foxconn/depthlib/refocus/DofEngine$DEPTH_TYPE;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 392
    .local v14, "bokehRst":Landroid/graphics/Bitmap;
    :goto_0
    sget-object v2, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PERF] Bokeh: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v18

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v14, v2, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 397
    .local v5, "bokehRst_final":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 398
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mData:[B

    move-object/from16 v0, p1

    iget v7, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mWidth:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mHeight:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mYStride:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mHeight:I

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mFormat:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    invoke-static/range {v5 .. v11}, Lcom/fih_foxconn/imagelab/ColorConverter;->ConvertBitmapToFormat(Landroid/graphics/Bitmap;[BIIIILcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;)V

    .line 400
    sget-object v2, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PERF] ConvertBack: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v18

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    sget-object v2, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PERF] SelfieBokeh done: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v16

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPSAdaBokeh:Lcom/fih_foxconn/imagelab/PSAdaBokeh;

    .line 404
    const/4 v2, 0x0

    return v2

    .line 365
    .end local v4    # "bitmap_mask_bokeh_in":Landroid/graphics/Bitmap;
    .end local v5    # "bokehRst_final":Landroid/graphics/Bitmap;
    .end local v12    # "bitmap_binary":Landroid/graphics/Bitmap;
    .end local v14    # "bokehRst":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 374
    .restart local v12    # "bitmap_binary":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 389
    .restart local v4    # "bitmap_mask_bokeh_in":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v2, Lcom/fih_foxconn/imagelab/PSAdaBokeh;

    sget-object v6, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/fih_foxconn/imagelab/PSAdaBokeh;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPSAdaBokeh:Lcom/fih_foxconn/imagelab/PSAdaBokeh;

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPSAdaBokeh:Lcom/fih_foxconn/imagelab/PSAdaBokeh;

    invoke-virtual {v2, v3, v4}, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->process(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v14

    .restart local v14    # "bokehRst":Landroid/graphics/Bitmap;
    goto/16 :goto_0
.end method

.method private rotateBitmapForFD(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "jpegRotation"    # I
    .param p3, "isHwRotate"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 467
    move-object v7, p1

    .line 468
    .local v7, "rst":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 469
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 471
    if-nez p3, :cond_0

    .line 472
    sparse-switch p2, :sswitch_data_0

    .line 486
    move-object v7, p1

    .line 491
    :cond_0
    :goto_0
    return-object v7

    .line 478
    :sswitch_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 479
    goto :goto_0

    .line 482
    :sswitch_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 483
    goto :goto_0

    .line 472
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public isSupportZeissBokeh()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->isSupportZeissBokeh:Z

    return v0
.end method

.method public process(Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;)I
    .locals 1
    .param p1, "image"    # Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;

    .prologue
    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->process(Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;Z)I

    move-result v0

    return v0
.end method

.method public process(Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;Z)I
    .locals 1
    .param p1, "image"    # Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;
    .param p2, "useNativeApi"    # Z

    .prologue
    .line 263
    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->processNativeApi(Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->processJavaApi(Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 193
    iget-wide v2, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeObjPtr:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeReleaseObj()V

    .line 195
    iput-wide v4, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeObjPtr:J

    .line 197
    :cond_0
    iget-wide v2, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeFdPtr:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeReleaseFD()V

    .line 199
    iput-wide v4, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeFdPtr:J

    .line 201
    :cond_1
    const/4 v1, 0x0

    sput-object v1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->sbInstance:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    .line 203
    iget-boolean v1, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->isSupportZeissBokeh:Z

    if-eqz v1, :cond_2

    .line 204
    invoke-static {}, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->getInstance()Lcom/fih_foxconn/depthlib/refocus/DofEngine;

    move-result-object v0

    .line 205
    .local v0, "dofEngine":Lcom/fih_foxconn/depthlib/refocus/DofEngine;
    if-eqz v0, :cond_2

    .line 206
    invoke-static {}, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->getInstance()Lcom/fih_foxconn/depthlib/refocus/DofEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->release()V

    .line 207
    invoke-static {}, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->clearInstance()V

    .line 210
    .end local v0    # "dofEngine":Lcom/fih_foxconn/depthlib/refocus/DofEngine;
    :cond_2
    sget-object v1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    const-string v2, "FIHSelfieBokeh release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method public setBokehType(Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;)V
    .locals 2
    .param p1, "bokehType"    # Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->isSupportZeissBokeh:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->ADABOKEH:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    if-eq p1, v0, :cond_0

    .line 220
    sget-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->TAG:Ljava/lang/String;

    const-string v1, "Zeiss Bokeh not support, use ADABOKEH instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->ADABOKEH:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mBokehType:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mBokehType:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    goto :goto_0
.end method
