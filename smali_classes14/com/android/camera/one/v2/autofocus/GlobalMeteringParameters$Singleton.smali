.class Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters$Singleton;
.super Ljava/lang/Object;
.source "GlobalMeteringParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;

    invoke-direct {v0}, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;-><init>()V

    sput-object v0, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters$Singleton;->INSTANCE:Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters$Singleton;->INSTANCE:Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;

    return-object v0
.end method
