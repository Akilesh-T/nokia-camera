.class Lcom/android/camera/debug/Loggers$NoOpLoggerFactory$Singleton;
.super Ljava/lang/Object;
.source "Loggers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/debug/Loggers$NoOpLoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/camera/debug/Loggers$NoOpLoggerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/android/camera/debug/Loggers$NoOpLoggerFactory;

    invoke-direct {v0}, Lcom/android/camera/debug/Loggers$NoOpLoggerFactory;-><init>()V

    sput-object v0, Lcom/android/camera/debug/Loggers$NoOpLoggerFactory$Singleton;->INSTANCE:Lcom/android/camera/debug/Loggers$NoOpLoggerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Loggers$NoOpLoggerFactory;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/camera/debug/Loggers$NoOpLoggerFactory$Singleton;->INSTANCE:Lcom/android/camera/debug/Loggers$NoOpLoggerFactory;

    return-object v0
.end method
