.class final Lorg/apache/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;
.super Lorg/apache/commons/lang3/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShortPrefixToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2185
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;-><init>()V

    .line 2186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;->setUseShortClassName(Z)V

    .line 2187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;->setUseIdentityHashCode(Z)V

    .line 2188
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2195
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->SHORT_PREFIX_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method
