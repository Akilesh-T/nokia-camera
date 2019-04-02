.class Lcom/android/camera/debug/LogHelper$Singleton;
.super Ljava/lang/Object;
.source "LogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/debug/LogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/camera/debug/LogHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/android/camera/debug/LogHelper;

    invoke-direct {v0}, Lcom/android/camera/debug/LogHelper;-><init>()V

    sput-object v0, Lcom/android/camera/debug/LogHelper$Singleton;->INSTANCE:Lcom/android/camera/debug/LogHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/LogHelper;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/camera/debug/LogHelper$Singleton;->INSTANCE:Lcom/android/camera/debug/LogHelper;

    return-object v0
.end method
