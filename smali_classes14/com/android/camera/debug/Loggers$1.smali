.class final Lcom/android/camera/debug/Loggers$1;
.super Ljava/lang/Object;
.source "Loggers.java"

# interfaces
.implements Lcom/android/camera/debug/Logger$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/debug/Loggers;->factoryFor(Lcom/android/camera/debug/Logger;)Lcom/android/camera/debug/Logger$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$logger:Lcom/android/camera/debug/Logger;


# direct methods
.method constructor <init>(Lcom/android/camera/debug/Logger;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/debug/Loggers$1;->val$logger:Lcom/android/camera/debug/Logger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;
    .locals 1
    .param p1, "tag"    # Lcom/android/camera/debug/Log$Tag;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/debug/Loggers$1;->val$logger:Lcom/android/camera/debug/Logger;

    return-object v0
.end method
