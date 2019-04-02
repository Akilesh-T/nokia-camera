.class public final Lcom/android/camera/async/Updatables;
.super Ljava/lang/Object;
.source "Updatables.java"


# static fields
.field private static final NOOP:Lcom/android/camera/async/Updatable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/android/camera/async/Updatables$1;

    invoke-direct {v0}, Lcom/android/camera/async/Updatables$1;-><init>()V

    sput-object v0, Lcom/android/camera/async/Updatables;->NOOP:Lcom/android/camera/async/Updatable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getNoOp()Lcom/android/camera/async/Updatable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/camera/async/Updatable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/android/camera/async/Updatables;->NOOP:Lcom/android/camera/async/Updatable;

    return-object v0
.end method
