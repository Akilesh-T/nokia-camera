.class public Lcom/google/common/logging/eventprotos$MediaInteraction$InteractionType;
.super Ljava/lang/Object;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/eventprotos$MediaInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InteractionType"
.end annotation


# static fields
.field public static final DELETE:I = 0x2710

.field public static final DETAILS:I = 0x2710

.field public static final EDIT:I = 0x2710

.field public static final SHARE:I = 0x2710


# instance fields
.field final synthetic this$1:Lcom/google/common/logging/eventprotos$MediaInteraction;


# direct methods
.method public constructor <init>(Lcom/google/common/logging/eventprotos$MediaInteraction;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/logging/eventprotos$MediaInteraction;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/common/logging/eventprotos$MediaInteraction$InteractionType;->this$1:Lcom/google/common/logging/eventprotos$MediaInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
